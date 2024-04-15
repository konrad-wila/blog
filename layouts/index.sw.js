var cacheName = 'v1';

self.addEventListener('install', event => {
  self.skipWaiting();
  event.waitUntil(caches.open(cacheName).then(cache => {
    return cache.addAll([
      '/',
      {{- range $.Site.RegularPages }}
      '{{ .Permalink }}',
      {{- end }}
    ]);
  }));
});

self.addEventListener('activate', event => {
  event.waitUntil(caches.keys().then(cacheNames => {
    return Promise.all(cacheNames.map(currentCacheName => {
      if (cacheName.indexOf(currentCacheName) === -1) {
        return caches.delete(currentCacheName)
      };
    }));
  }));
});

async function cacheFirstWithRefresh(request) {
  console.log(request);
  // TODO: https://latex.codecogs.com/ should be cache-first
  const fetchResponsePromise = fetch(request).then(async (networkResponse) => {
    if (networkResponse.ok) {
      const cache = await caches.open(cacheName);
      cache.put(request, networkResponse.clone());
    }
    return networkResponse;
  });
  return (await caches.match(request)) || (await fetchResponsePromise);
}

self.addEventListener('fetch', function (event) {
  event.respondWith(cacheFirstWithRefresh(event.request));
});