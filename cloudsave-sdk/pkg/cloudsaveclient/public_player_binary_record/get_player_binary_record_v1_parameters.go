// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// NewGetPlayerBinaryRecordV1Params creates a new GetPlayerBinaryRecordV1Params object
// with the default values initialized.
func NewGetPlayerBinaryRecordV1Params() *GetPlayerBinaryRecordV1Params {
	var ()
	return &GetPlayerBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlayerBinaryRecordV1ParamsWithTimeout creates a new GetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlayerBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *GetPlayerBinaryRecordV1Params {
	var ()
	return &GetPlayerBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewGetPlayerBinaryRecordV1ParamsWithContext creates a new GetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlayerBinaryRecordV1ParamsWithContext(ctx context.Context) *GetPlayerBinaryRecordV1Params {
	var ()
	return &GetPlayerBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewGetPlayerBinaryRecordV1ParamsWithHTTPClient creates a new GetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlayerBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *GetPlayerBinaryRecordV1Params {
	var ()
	return &GetPlayerBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*GetPlayerBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the get player binary record v1 operation typically these are written to a http.Request
*/
type GetPlayerBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithTimeout(timeout time.Duration) *GetPlayerBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithContext(ctx context.Context) *GetPlayerBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithHTTPClient(client *http.Client) *GetPlayerBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithKey(key string) *GetPlayerBinaryRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithNamespace(namespace string) *GetPlayerBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) WithUserID(userID string) *GetPlayerBinaryRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get player binary record v1 params
func (o *GetPlayerBinaryRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlayerBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
