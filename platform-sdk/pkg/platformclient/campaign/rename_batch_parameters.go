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

// NewRenameBatchParams creates a new RenameBatchParams object
// with the default values initialized.
func NewRenameBatchParams() *RenameBatchParams {
	var ()
	return &RenameBatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRenameBatchParamsWithTimeout creates a new RenameBatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRenameBatchParamsWithTimeout(timeout time.Duration) *RenameBatchParams {
	var ()
	return &RenameBatchParams{

		timeout: timeout,
	}
}

// NewRenameBatchParamsWithContext creates a new RenameBatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewRenameBatchParamsWithContext(ctx context.Context) *RenameBatchParams {
	var ()
	return &RenameBatchParams{

		Context: ctx,
	}
}

// NewRenameBatchParamsWithHTTPClient creates a new RenameBatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRenameBatchParamsWithHTTPClient(client *http.Client) *RenameBatchParams {
	var ()
	return &RenameBatchParams{
		HTTPClient: client,
	}
}

/*RenameBatchParams contains all the parameters to send to the API endpoint
for the rename batch operation typically these are written to a http.Request
*/
type RenameBatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CampaignBatchNameChange
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

// WithTimeout adds the timeout to the rename batch params
func (o *RenameBatchParams) WithTimeout(timeout time.Duration) *RenameBatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rename batch params
func (o *RenameBatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rename batch params
func (o *RenameBatchParams) WithContext(ctx context.Context) *RenameBatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rename batch params
func (o *RenameBatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rename batch params
func (o *RenameBatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rename batch params
func (o *RenameBatchParams) WithHTTPClient(client *http.Client) *RenameBatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rename batch params
func (o *RenameBatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rename batch params
func (o *RenameBatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RenameBatchParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the rename batch params
func (o *RenameBatchParams) WithBody(body *platformclientmodels.CampaignBatchNameChange) *RenameBatchParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the rename batch params
func (o *RenameBatchParams) SetBody(body *platformclientmodels.CampaignBatchNameChange) {
	o.Body = body
}

// WithCampaignID adds the campaignID to the rename batch params
func (o *RenameBatchParams) WithCampaignID(campaignID string) *RenameBatchParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the rename batch params
func (o *RenameBatchParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the rename batch params
func (o *RenameBatchParams) WithNamespace(namespace string) *RenameBatchParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rename batch params
func (o *RenameBatchParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RenameBatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
