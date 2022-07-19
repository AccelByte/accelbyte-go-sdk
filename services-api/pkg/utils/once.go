// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"sync"
	"sync/atomic"
)

type Once struct {
	m    sync.Mutex
	done uint32
}

// This Do is similar to http://github.com/matryer/resync
func (o *Once) Do(f func()) {
	if atomic.LoadUint32(&o.done) == 1 {
		return
	}
	// Slow-path.
	o.m.Lock()
	defer o.m.Unlock()
	if o.done == 0 {
		defer atomic.StoreUint32(&o.done, 1)
		f()
	}
}

// This Reset is similar to http://github.com/matryer/resync
func (o *Once) Reset() {
	o.m.Lock()
	defer o.m.Unlock()
	atomic.StoreUint32(&o.done, 0)
}
