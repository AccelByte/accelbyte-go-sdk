// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// NewAdminValidateXboxBPCertFileParams creates a new AdminValidateXboxBPCertFileParams object
// with the default values initialized.
func NewAdminValidateXboxBPCertFileParams() *AdminValidateXboxBPCertFileParams {
	var ()
	return &AdminValidateXboxBPCertFileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminValidateXboxBPCertFileParamsWithTimeout creates a new AdminValidateXboxBPCertFileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminValidateXboxBPCertFileParamsWithTimeout(timeout time.Duration) *AdminValidateXboxBPCertFileParams {
	var ()
	return &AdminValidateXboxBPCertFileParams{

		timeout: timeout,
	}
}

// NewAdminValidateXboxBPCertFileParamsWithContext creates a new AdminValidateXboxBPCertFileParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminValidateXboxBPCertFileParamsWithContext(ctx context.Context) *AdminValidateXboxBPCertFileParams {
	var ()
	return &AdminValidateXboxBPCertFileParams{

		Context: ctx,
	}
}

// NewAdminValidateXboxBPCertFileParamsWithHTTPClient creates a new AdminValidateXboxBPCertFileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminValidateXboxBPCertFileParamsWithHTTPClient(client *http.Client) *AdminValidateXboxBPCertFileParams {
	var ()
	return &AdminValidateXboxBPCertFileParams{
		HTTPClient: client,
	}
}

/*AdminValidateXboxBPCertFileParams contains all the parameters to send to the API endpoint
for the admin validate xbox bp cert file operation typically these are written to a http.Request
*/
type AdminValidateXboxBPCertFileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *gdprclientmodels.DTOXboxBPCertValidationRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) WithTimeout(timeout time.Duration) *AdminValidateXboxBPCertFileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) WithContext(ctx context.Context) *AdminValidateXboxBPCertFileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) WithHTTPClient(client *http.Client) *AdminValidateXboxBPCertFileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminValidateXboxBPCertFileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) WithBody(body *gdprclientmodels.DTOXboxBPCertValidationRequest) *AdminValidateXboxBPCertFileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetBody(body *gdprclientmodels.DTOXboxBPCertValidationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) WithNamespace(namespace string) *AdminValidateXboxBPCertFileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin validate xbox bp cert file params
func (o *AdminValidateXboxBPCertFileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminValidateXboxBPCertFileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
