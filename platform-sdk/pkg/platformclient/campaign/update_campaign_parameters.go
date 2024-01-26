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

// NewUpdateCampaignParams creates a new UpdateCampaignParams object
// with the default values initialized.
func NewUpdateCampaignParams() *UpdateCampaignParams {
	var ()
	return &UpdateCampaignParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCampaignParamsWithTimeout creates a new UpdateCampaignParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCampaignParamsWithTimeout(timeout time.Duration) *UpdateCampaignParams {
	var ()
	return &UpdateCampaignParams{

		timeout: timeout,
	}
}

// NewUpdateCampaignParamsWithContext creates a new UpdateCampaignParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCampaignParamsWithContext(ctx context.Context) *UpdateCampaignParams {
	var ()
	return &UpdateCampaignParams{

		Context: ctx,
	}
}

// NewUpdateCampaignParamsWithHTTPClient creates a new UpdateCampaignParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCampaignParamsWithHTTPClient(client *http.Client) *UpdateCampaignParams {
	var ()
	return &UpdateCampaignParams{
		HTTPClient: client,
	}
}

/*UpdateCampaignParams contains all the parameters to send to the API endpoint
for the update campaign operation typically these are written to a http.Request
*/
type UpdateCampaignParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CampaignUpdate
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update campaign params
func (o *UpdateCampaignParams) WithTimeout(timeout time.Duration) *UpdateCampaignParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update campaign params
func (o *UpdateCampaignParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update campaign params
func (o *UpdateCampaignParams) WithContext(ctx context.Context) *UpdateCampaignParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update campaign params
func (o *UpdateCampaignParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update campaign params
func (o *UpdateCampaignParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update campaign params
func (o *UpdateCampaignParams) WithHTTPClient(client *http.Client) *UpdateCampaignParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update campaign params
func (o *UpdateCampaignParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update campaign params
func (o *UpdateCampaignParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateCampaignParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update campaign params
func (o *UpdateCampaignParams) WithBody(body *platformclientmodels.CampaignUpdate) *UpdateCampaignParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update campaign params
func (o *UpdateCampaignParams) SetBody(body *platformclientmodels.CampaignUpdate) {
	o.Body = body
}

// WithCampaignID adds the campaignID to the update campaign params
func (o *UpdateCampaignParams) WithCampaignID(campaignID string) *UpdateCampaignParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the update campaign params
func (o *UpdateCampaignParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the update campaign params
func (o *UpdateCampaignParams) WithNamespace(namespace string) *UpdateCampaignParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update campaign params
func (o *UpdateCampaignParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCampaignParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
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
