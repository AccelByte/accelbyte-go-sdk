// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateCampaignParams creates a new CreateCampaignParams object
// with the default values initialized.
func NewCreateCampaignParams() *CreateCampaignParams {
	var ()
	return &CreateCampaignParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateCampaignParamsWithTimeout creates a new CreateCampaignParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateCampaignParamsWithTimeout(timeout time.Duration) *CreateCampaignParams {
	var ()
	return &CreateCampaignParams{

		timeout: timeout,
	}
}

// NewCreateCampaignParamsWithContext creates a new CreateCampaignParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateCampaignParamsWithContext(ctx context.Context) *CreateCampaignParams {
	var ()
	return &CreateCampaignParams{

		Context: ctx,
	}
}

// NewCreateCampaignParamsWithHTTPClient creates a new CreateCampaignParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateCampaignParamsWithHTTPClient(client *http.Client) *CreateCampaignParams {
	var ()
	return &CreateCampaignParams{
		HTTPClient: client,
	}
}

/*CreateCampaignParams contains all the parameters to send to the API endpoint
for the create campaign operation typically these are written to a http.Request
*/
type CreateCampaignParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CampaignCreate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create campaign params
func (o *CreateCampaignParams) WithTimeout(timeout time.Duration) *CreateCampaignParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create campaign params
func (o *CreateCampaignParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create campaign params
func (o *CreateCampaignParams) WithContext(ctx context.Context) *CreateCampaignParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create campaign params
func (o *CreateCampaignParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create campaign params
func (o *CreateCampaignParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create campaign params
func (o *CreateCampaignParams) WithHTTPClient(client *http.Client) *CreateCampaignParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create campaign params
func (o *CreateCampaignParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create campaign params
func (o *CreateCampaignParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateCampaignParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create campaign params
func (o *CreateCampaignParams) WithBody(body *platformclientmodels.CampaignCreate) *CreateCampaignParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create campaign params
func (o *CreateCampaignParams) SetBody(body *platformclientmodels.CampaignCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create campaign params
func (o *CreateCampaignParams) WithNamespace(namespace string) *CreateCampaignParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create campaign params
func (o *CreateCampaignParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateCampaignParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
