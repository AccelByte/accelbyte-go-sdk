// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_concurrent_record

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

// NewAdminPutPlayerRecordConcurrentHandlerV1Params creates a new AdminPutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized.
func NewAdminPutPlayerRecordConcurrentHandlerV1Params() *AdminPutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordConcurrentHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithTimeout creates a new AdminPutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordConcurrentHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithContext creates a new AdminPutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithContext(ctx context.Context) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordConcurrentHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithHTTPClient creates a new AdminPutPlayerRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutPlayerRecordConcurrentHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordConcurrentHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminPutPlayerRecordConcurrentHandlerV1Params contains all the parameters to send to the API endpoint
for the admin put player record concurrent handler v1 operation typically these are written to a http.Request
*/
type AdminPutPlayerRecordConcurrentHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest
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
	/*ResponseBody
	  flag to tell the service to return non empty response

	*/
	ResponseBody *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithTimeout(timeout time.Duration) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithContext(ctx context.Context) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithHTTPClient(client *http.Client) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithKey(key string) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithNamespace(namespace string) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithUserID(userID string) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithResponseBody adds the responseBody to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WithResponseBody(responseBody *bool) *AdminPutPlayerRecordConcurrentHandlerV1Params {
	o.SetResponseBody(responseBody)
	return o
}

// SetResponseBody adds the responseBody to the admin put player record concurrent handler v1 params
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) SetResponseBody(responseBody *bool) {
	o.ResponseBody = responseBody
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutPlayerRecordConcurrentHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
