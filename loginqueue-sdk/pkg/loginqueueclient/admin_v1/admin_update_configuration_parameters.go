// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_v1

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclientmodels"
)

// NewAdminUpdateConfigurationParams creates a new AdminUpdateConfigurationParams object
// with the default values initialized.
func NewAdminUpdateConfigurationParams() *AdminUpdateConfigurationParams {
	var ()
	return &AdminUpdateConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateConfigurationParamsWithTimeout creates a new AdminUpdateConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdateConfigurationParams {
	var ()
	return &AdminUpdateConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateConfigurationParamsWithContext creates a new AdminUpdateConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateConfigurationParamsWithContext(ctx context.Context) *AdminUpdateConfigurationParams {
	var ()
	return &AdminUpdateConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdateConfigurationParamsWithHTTPClient creates a new AdminUpdateConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdateConfigurationParams {
	var ()
	return &AdminUpdateConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateConfigurationParams contains all the parameters to send to the API endpoint
for the admin update configuration operation typically these are written to a http.Request
*/
type AdminUpdateConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *loginqueueclientmodels.ApimodelsConfigurationRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update configuration params
func (o *AdminUpdateConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdateConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update configuration params
func (o *AdminUpdateConfigurationParams) WithContext(ctx context.Context) *AdminUpdateConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update configuration params
func (o *AdminUpdateConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdateConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update configuration params
func (o *AdminUpdateConfigurationParams) WithBody(body *loginqueueclientmodels.ApimodelsConfigurationRequest) *AdminUpdateConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetBody(body *loginqueueclientmodels.ApimodelsConfigurationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update configuration params
func (o *AdminUpdateConfigurationParams) WithNamespace(namespace string) *AdminUpdateConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update configuration params
func (o *AdminUpdateConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
