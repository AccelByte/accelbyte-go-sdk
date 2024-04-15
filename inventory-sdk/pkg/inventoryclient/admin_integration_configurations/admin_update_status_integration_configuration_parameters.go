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

// NewAdminUpdateStatusIntegrationConfigurationParams creates a new AdminUpdateStatusIntegrationConfigurationParams object
// with the default values initialized.
func NewAdminUpdateStatusIntegrationConfigurationParams() *AdminUpdateStatusIntegrationConfigurationParams {
	var ()
	return &AdminUpdateStatusIntegrationConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateStatusIntegrationConfigurationParamsWithTimeout creates a new AdminUpdateStatusIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateStatusIntegrationConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdateStatusIntegrationConfigurationParams {
	var ()
	return &AdminUpdateStatusIntegrationConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateStatusIntegrationConfigurationParamsWithContext creates a new AdminUpdateStatusIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateStatusIntegrationConfigurationParamsWithContext(ctx context.Context) *AdminUpdateStatusIntegrationConfigurationParams {
	var ()
	return &AdminUpdateStatusIntegrationConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdateStatusIntegrationConfigurationParamsWithHTTPClient creates a new AdminUpdateStatusIntegrationConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateStatusIntegrationConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdateStatusIntegrationConfigurationParams {
	var ()
	return &AdminUpdateStatusIntegrationConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateStatusIntegrationConfigurationParams contains all the parameters to send to the API endpoint
for the admin update status integration configuration operation typically these are written to a http.Request
*/
type AdminUpdateStatusIntegrationConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsUpdateStatusIntegrationConfigurationReq
	/*IntegrationConfigurationID
	  integrationConfigurationID

	*/
	IntegrationConfigurationID string
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

// WithTimeout adds the timeout to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithContext(ctx context.Context) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithBody(body *inventoryclientmodels.ApimodelsUpdateStatusIntegrationConfigurationReq) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetBody(body *inventoryclientmodels.ApimodelsUpdateStatusIntegrationConfigurationReq) {
	o.Body = body
}

// WithIntegrationConfigurationID adds the integrationConfigurationID to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithIntegrationConfigurationID(integrationConfigurationID string) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetIntegrationConfigurationID(integrationConfigurationID)
	return o
}

// SetIntegrationConfigurationID adds the integrationConfigurationId to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetIntegrationConfigurationID(integrationConfigurationID string) {
	o.IntegrationConfigurationID = integrationConfigurationID
}

// WithNamespace adds the namespace to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) WithNamespace(namespace string) *AdminUpdateStatusIntegrationConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update status integration configuration params
func (o *AdminUpdateStatusIntegrationConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateStatusIntegrationConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param integrationConfigurationId
	if err := r.SetPathParam("integrationConfigurationId", o.IntegrationConfigurationID); err != nil {
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
