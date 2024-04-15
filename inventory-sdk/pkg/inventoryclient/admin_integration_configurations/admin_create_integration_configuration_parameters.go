// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_integration_configurations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminCreateIntegrationConfigurationParams creates a new AdminCreateIntegrationConfigurationParams object
// with the default values initialized.
func NewAdminCreateIntegrationConfigurationParams() *AdminCreateIntegrationConfigurationParams {
	var ()
	return &AdminCreateIntegrationConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateIntegrationConfigurationParamsWithTimeout creates a new AdminCreateIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateIntegrationConfigurationParamsWithTimeout(timeout time.Duration) *AdminCreateIntegrationConfigurationParams {
	var ()
	return &AdminCreateIntegrationConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminCreateIntegrationConfigurationParamsWithContext creates a new AdminCreateIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateIntegrationConfigurationParamsWithContext(ctx context.Context) *AdminCreateIntegrationConfigurationParams {
	var ()
	return &AdminCreateIntegrationConfigurationParams{

		Context: ctx,
	}
}

// NewAdminCreateIntegrationConfigurationParamsWithHTTPClient creates a new AdminCreateIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateIntegrationConfigurationParamsWithHTTPClient(client *http.Client) *AdminCreateIntegrationConfigurationParams {
	var ()
	return &AdminCreateIntegrationConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminCreateIntegrationConfigurationParams contains all the parameters to send to the API endpoint
for the admin create integration configuration operation typically these are written to a http.Request
*/
type AdminCreateIntegrationConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsCreateIntegrationConfigurationReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) WithTimeout(timeout time.Duration) *AdminCreateIntegrationConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) WithContext(ctx context.Context) *AdminCreateIntegrationConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) WithHTTPClient(client *http.Client) *AdminCreateIntegrationConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateIntegrationConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) WithBody(body *inventoryclientmodels.ApimodelsCreateIntegrationConfigurationReq) *AdminCreateIntegrationConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetBody(body *inventoryclientmodels.ApimodelsCreateIntegrationConfigurationReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) WithNamespace(namespace string) *AdminCreateIntegrationConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create integration configuration params
func (o *AdminCreateIntegrationConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateIntegrationConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
