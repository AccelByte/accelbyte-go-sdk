// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package concurrent_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewPutPlayerRecordConcurrentHandlerV1Params creates a new PutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized.
func NewPutPlayerRecordConcurrentHandlerV1Params() *PutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &PutPlayerRecordConcurrentHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPutPlayerRecordConcurrentHandlerV1ParamsWithTimeout creates a new PutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPutPlayerRecordConcurrentHandlerV1ParamsWithTimeout(timeout time.Duration) *PutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &PutPlayerRecordConcurrentHandlerV1Params{

		timeout: timeout,
	}
}

// NewPutPlayerRecordConcurrentHandlerV1ParamsWithContext creates a new PutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPutPlayerRecordConcurrentHandlerV1ParamsWithContext(ctx context.Context) *PutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &PutPlayerRecordConcurrentHandlerV1Params{

		Context: ctx,
	}
}

// NewPutPlayerRecordConcurrentHandlerV1ParamsWithHTTPClient creates a new PutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPutPlayerRecordConcurrentHandlerV1ParamsWithHTTPClient(client *http.Client) *PutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &PutPlayerRecordConcurrentHandlerV1Params{
		HTTPClient: client,
	}
}

/*PutPlayerRecordConcurrentHandlerV1Params contains all the parameters to send to the API endpoint
for the put player record concurrent handler v1 operation typically these are written to a http.Request
*/
type PutPlayerRecordConcurrentHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsConcurrentRecordRequest
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
	/*ResponseBody
	  flag to tell the service to return non empty response

	*/
	ResponseBody *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithTimeout(timeout time.Duration) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithContext(ctx context.Context) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithHTTPClient(client *http.Client) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithKey(key string) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithNamespace(namespace string) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithUserID(userID string) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithResponseBody adds the responseBody to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) WithResponseBody(responseBody *bool) *PutPlayerRecordConcurrentHandlerV1Params {
	o.SetResponseBody(responseBody)
	return o
}

// SetResponseBody adds the responseBody to the put player record concurrent handler v1 params
func (o *PutPlayerRecordConcurrentHandlerV1Params) SetResponseBody(responseBody *bool) {
	o.ResponseBody = responseBody
}

// WriteToRequest writes these params to a swagger request
func (o *PutPlayerRecordConcurrentHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

	if o.ResponseBody != nil {

		// query param responseBody
		var qrResponseBody bool
		if o.ResponseBody != nil {
			qrResponseBody = *o.ResponseBody
		}
		qResponseBody := swag.FormatBool(qrResponseBody)
		if qResponseBody != "" {
			if err := r.SetQueryParam("responseBody", qResponseBody); err != nil {
				return err
			}
		}

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
