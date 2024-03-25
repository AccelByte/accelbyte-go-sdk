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

// NewDevelopmentServerConfigurationCreateParams creates a new DevelopmentServerConfigurationCreateParams object
// with the default values initialized.
func NewDevelopmentServerConfigurationCreateParams() *DevelopmentServerConfigurationCreateParams {
	var ()
	return &DevelopmentServerConfigurationCreateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDevelopmentServerConfigurationCreateParamsWithTimeout creates a new DevelopmentServerConfigurationCreateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDevelopmentServerConfigurationCreateParamsWithTimeout(timeout time.Duration) *DevelopmentServerConfigurationCreateParams {
	var ()
	return &DevelopmentServerConfigurationCreateParams{

		timeout: timeout,
	}
}

// NewDevelopmentServerConfigurationCreateParamsWithContext creates a new DevelopmentServerConfigurationCreateParams object
// with the default values initialized, and the ability to set a context for a request
func NewDevelopmentServerConfigurationCreateParamsWithContext(ctx context.Context) *DevelopmentServerConfigurationCreateParams {
	var ()
	return &DevelopmentServerConfigurationCreateParams{

		Context: ctx,
	}
}

// NewDevelopmentServerConfigurationCreateParamsWithHTTPClient creates a new DevelopmentServerConfigurationCreateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDevelopmentServerConfigurationCreateParamsWithHTTPClient(client *http.Client) *DevelopmentServerConfigurationCreateParams {
	var ()
	return &DevelopmentServerConfigurationCreateParams{
		HTTPClient: client,
	}
}

/*DevelopmentServerConfigurationCreateParams contains all the parameters to send to the API endpoint
for the development server configuration create operation typically these are written to a http.Request
*/
type DevelopmentServerConfigurationCreateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIDevelopmentServerConfigurationCreateRequest
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

// WithTimeout adds the timeout to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) WithTimeout(timeout time.Duration) *DevelopmentServerConfigurationCreateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) WithContext(ctx context.Context) *DevelopmentServerConfigurationCreateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) WithHTTPClient(client *http.Client) *DevelopmentServerConfigurationCreateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DevelopmentServerConfigurationCreateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) WithBody(body *amsclientmodels.APIDevelopmentServerConfigurationCreateRequest) *DevelopmentServerConfigurationCreateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetBody(body *amsclientmodels.APIDevelopmentServerConfigurationCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) WithNamespace(namespace string) *DevelopmentServerConfigurationCreateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the development server configuration create params
func (o *DevelopmentServerConfigurationCreateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DevelopmentServerConfigurationCreateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
