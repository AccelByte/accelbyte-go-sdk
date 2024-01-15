// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminGetAdminPlayerRecordV1Params creates a new AdminGetAdminPlayerRecordV1Params object
// with the default values initialized.
func NewAdminGetAdminPlayerRecordV1Params() *AdminGetAdminPlayerRecordV1Params {
	var ()
	return &AdminGetAdminPlayerRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAdminPlayerRecordV1ParamsWithTimeout creates a new AdminGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAdminPlayerRecordV1ParamsWithTimeout(timeout time.Duration) *AdminGetAdminPlayerRecordV1Params {
	var ()
	return &AdminGetAdminPlayerRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminGetAdminPlayerRecordV1ParamsWithContext creates a new AdminGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAdminPlayerRecordV1ParamsWithContext(ctx context.Context) *AdminGetAdminPlayerRecordV1Params {
	var ()
	return &AdminGetAdminPlayerRecordV1Params{

		Context: ctx,
	}
}

// NewAdminGetAdminPlayerRecordV1ParamsWithHTTPClient creates a new AdminGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAdminPlayerRecordV1ParamsWithHTTPClient(client *http.Client) *AdminGetAdminPlayerRecordV1Params {
	var ()
	return &AdminGetAdminPlayerRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminGetAdminPlayerRecordV1Params contains all the parameters to send to the API endpoint
for the admin get admin player record v1 operation typically these are written to a http.Request
*/
type AdminGetAdminPlayerRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithTimeout(timeout time.Duration) *AdminGetAdminPlayerRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithContext(ctx context.Context) *AdminGetAdminPlayerRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithHTTPClient(client *http.Client) *AdminGetAdminPlayerRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithKey(key string) *AdminGetAdminPlayerRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithNamespace(namespace string) *AdminGetAdminPlayerRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) WithUserID(userID string) *AdminGetAdminPlayerRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get admin player record v1 params
func (o *AdminGetAdminPlayerRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAdminPlayerRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
