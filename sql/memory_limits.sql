do $$
  const limit = plv8.execute(`select setting from pg_settings where name = $1`, ['plv8.memory_limit'])[0].setting;
  const a = new ArrayBuffer(limit*1024*1024/2);
$$ language plv8;

do $$
  const limit = plv8.execute(`select setting from pg_settings where name = $1`, ['plv8.memory_limit'])[0].setting;
  const a = new ArrayBuffer(limit*1024*1024/2);
$$ language plv8;

do $$
  const limit = plv8.execute(`select setting from pg_settings where name = $1`, ['plv8.memory_limit'])[0].setting;
  const a = new ArrayBuffer(limit*1024*1024);
$$ language plv8;

do $$
  const limit = plv8.execute(`select setting from pg_settings where name = $1`, ['plv8.memory_limit'])[0].setting;
  const a = new ArrayBuffer(limit*1024*1024/1.5);
  const s = [];
  while(true) {
    s.push(new ArrayBuffer(63)) // small non-aligned allocations
  }
$$ language plv8;
