// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewDevelopmentServerConfigurationPatchParams creates a new DevelopmentServerConfigurationPatchParams object
// with the default values initialized.
func NewDevelopmentServerConfigurationPatchParams() *DevelopmentServerConfigurationPatchParams {
	var ()
	return &DevelopmentServerConfigurationPatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDevelopmentServerConfigurationPatchParamsWithTimeout creates a new DevelopmentServerConfigurationPatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDevelopmentServerConfigurationPatchParamsWithTimeout(timeout time.Duration) *DevelopmentServerConfigurationPatchParams {
	var ()
	return &DevelopmentServerConfigurationPatchParams{

		timeout: timeout,
	}
}

// NewDevelopmentServerConfigurationPatchParamsWithContext creates a new DevelopmentServerConfigurationPatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewDevelopmentServerConfigurationPatchParamsWithContext(ctx context.Context) *DevelopmentServerConfigurationPatchParams {
	var ()
	return &DevelopmentServerConfigurationPatchParams{

		Context: ctx,
	}
}

// NewDevelopmentServerConfigurationPatchParamsWithHTTPClient creates a new DevelopmentServerConfigurationPatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDevelopmentServerConfigurationPatchParamsWithHTTPClient(client *http.Client) *DevelopmentServerConfigurationPatchParams {
	var ()
	return &DevelopmentServerConfigurationPatchParams{
		HTTPClient: client,
	}
}

/*DevelopmentServerConfigurationPatchParams contains all the parameters to send to the API endpoint
for the development server configuration patch operation typically these are written to a http.Request
*/
type DevelopmentServerConfigurationPatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIDevelopmentServerConfigurationUpdateRequest
	/*DevelopmentServerConfigID
	  the name of the development server configuration

	*/
	DevelopmentServerConfigID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithTimeout(timeout time.Duration) *DevelopmentServerConfigurationPatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithContext(ctx context.Context) *DevelopmentServerConfigurationPatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithHTTPClient(client *http.Client) *DevelopmentServerConfigurationPatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DevelopmentServerConfigurationPatchParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithBody(body *amsclientmodels.APIDevelopmentServerConfigurationUpdateRequest) *DevelopmentServerConfigurationPatchParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetBody(body *amsclientmodels.APIDevelopmentServerConfigurationUpdateRequest) {
	o.Body = body
}

// WithDevelopmentServerConfigID adds the developmentServerConfigID to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithDevelopmentServerConfigID(developmentServerConfigID string) *DevelopmentServerConfigurationPatchParams {
	o.SetDevelopmentServerConfigID(developmentServerConfigID)
	return o
}

// SetDevelopmentServerConfigID adds the developmentServerConfigId to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetDevelopmentServerConfigID(developmentServerConfigID string) {
	o.DevelopmentServerConfigID = developmentServerConfigID
}

// WithNamespace adds the namespace to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) WithNamespace(namespace string) *DevelopmentServerConfigurationPatchParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the development server configuration patch params
func (o *DevelopmentServerConfigurationPatchParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DevelopmentServerConfigurationPatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param developmentServerConfigID
	if err := r.SetPathParam("developmentServerConfigID", o.DevelopmentServerConfigID); err != nil {
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
