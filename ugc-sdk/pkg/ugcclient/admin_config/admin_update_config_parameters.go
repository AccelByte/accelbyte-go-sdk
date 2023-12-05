// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUpdateConfigParams creates a new AdminUpdateConfigParams object
// with the default values initialized.
func NewAdminUpdateConfigParams() *AdminUpdateConfigParams {
	var ()
	return &AdminUpdateConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateConfigParamsWithTimeout creates a new AdminUpdateConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateConfigParamsWithTimeout(timeout time.Duration) *AdminUpdateConfigParams {
	var ()
	return &AdminUpdateConfigParams{

		timeout: timeout,
	}
}

// NewAdminUpdateConfigParamsWithContext creates a new AdminUpdateConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateConfigParamsWithContext(ctx context.Context) *AdminUpdateConfigParams {
	var ()
	return &AdminUpdateConfigParams{

		Context: ctx,
	}
}

// NewAdminUpdateConfigParamsWithHTTPClient creates a new AdminUpdateConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateConfigParamsWithHTTPClient(client *http.Client) *AdminUpdateConfigParams {
	var ()
	return &AdminUpdateConfigParams{
		HTTPClient: client,
	}
}

/*AdminUpdateConfigParams contains all the parameters to send to the API endpoint
for the admin update config operation typically these are written to a http.Request
*/
type AdminUpdateConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateConfigRequest
	/*Key
	  config key

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update config params
func (o *AdminUpdateConfigParams) WithTimeout(timeout time.Duration) *AdminUpdateConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update config params
func (o *AdminUpdateConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update config params
func (o *AdminUpdateConfigParams) WithContext(ctx context.Context) *AdminUpdateConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update config params
func (o *AdminUpdateConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update config params
func (o *AdminUpdateConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update config params
func (o *AdminUpdateConfigParams) WithHTTPClient(client *http.Client) *AdminUpdateConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update config params
func (o *AdminUpdateConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update config params
func (o *AdminUpdateConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update config params
func (o *AdminUpdateConfigParams) WithBody(body *ugcclientmodels.ModelsUpdateConfigRequest) *AdminUpdateConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update config params
func (o *AdminUpdateConfigParams) SetBody(body *ugcclientmodels.ModelsUpdateConfigRequest) {
	o.Body = body
}

// WithKey adds the key to the admin update config params
func (o *AdminUpdateConfigParams) WithKey(key string) *AdminUpdateConfigParams {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin update config params
func (o *AdminUpdateConfigParams) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin update config params
func (o *AdminUpdateConfigParams) WithNamespace(namespace string) *AdminUpdateConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update config params
func (o *AdminUpdateConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
