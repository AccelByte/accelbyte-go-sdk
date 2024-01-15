// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

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

// NewAdminPostGameBinaryRecordV1Params creates a new AdminPostGameBinaryRecordV1Params object
// with the default values initialized.
func NewAdminPostGameBinaryRecordV1Params() *AdminPostGameBinaryRecordV1Params {
	var ()
	return &AdminPostGameBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPostGameBinaryRecordV1ParamsWithTimeout creates a new AdminPostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPostGameBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *AdminPostGameBinaryRecordV1Params {
	var ()
	return &AdminPostGameBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminPostGameBinaryRecordV1ParamsWithContext creates a new AdminPostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPostGameBinaryRecordV1ParamsWithContext(ctx context.Context) *AdminPostGameBinaryRecordV1Params {
	var ()
	return &AdminPostGameBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewAdminPostGameBinaryRecordV1ParamsWithHTTPClient creates a new AdminPostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPostGameBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *AdminPostGameBinaryRecordV1Params {
	var ()
	return &AdminPostGameBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminPostGameBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the admin post game binary record v1 operation typically these are written to a http.Request
*/
type AdminPostGameBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsGameBinaryRecordCreate
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) WithTimeout(timeout time.Duration) *AdminPostGameBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) WithContext(ctx context.Context) *AdminPostGameBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) WithHTTPClient(client *http.Client) *AdminPostGameBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsGameBinaryRecordCreate) *AdminPostGameBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsGameBinaryRecordCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) WithNamespace(namespace string) *AdminPostGameBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin post game binary record v1 params
func (o *AdminPostGameBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPostGameBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
