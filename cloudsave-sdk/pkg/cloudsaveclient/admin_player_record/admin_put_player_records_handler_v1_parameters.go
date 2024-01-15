// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPutPlayerRecordsHandlerV1Params creates a new AdminPutPlayerRecordsHandlerV1Params object
// with the default values initialized.
func NewAdminPutPlayerRecordsHandlerV1Params() *AdminPutPlayerRecordsHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordsHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutPlayerRecordsHandlerV1ParamsWithTimeout creates a new AdminPutPlayerRecordsHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutPlayerRecordsHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminPutPlayerRecordsHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordsHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminPutPlayerRecordsHandlerV1ParamsWithContext creates a new AdminPutPlayerRecordsHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutPlayerRecordsHandlerV1ParamsWithContext(ctx context.Context) *AdminPutPlayerRecordsHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordsHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminPutPlayerRecordsHandlerV1ParamsWithHTTPClient creates a new AdminPutPlayerRecordsHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutPlayerRecordsHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminPutPlayerRecordsHandlerV1Params {
	var ()
	return &AdminPutPlayerRecordsHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminPutPlayerRecordsHandlerV1Params contains all the parameters to send to the API endpoint
for the admin put player records handler v1 operation typically these are written to a http.Request
*/
type AdminPutPlayerRecordsHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordsRequest
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

// WithTimeout adds the timeout to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithTimeout(timeout time.Duration) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithContext(ctx context.Context) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithHTTPClient(client *http.Client) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordsRequest) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithNamespace(namespace string) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) WithUserID(userID string) *AdminPutPlayerRecordsHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put player records handler v1 params
func (o *AdminPutPlayerRecordsHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutPlayerRecordsHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
