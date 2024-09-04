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
	"github.com/go-openapi/swag"
)

// NewQueryCampaignBatchNamesParams creates a new QueryCampaignBatchNamesParams object
// with the default values initialized.
func NewQueryCampaignBatchNamesParams() *QueryCampaignBatchNamesParams {
	var (
		limitDefault = int32(10)
	)
	return &QueryCampaignBatchNamesParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryCampaignBatchNamesParamsWithTimeout creates a new QueryCampaignBatchNamesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryCampaignBatchNamesParamsWithTimeout(timeout time.Duration) *QueryCampaignBatchNamesParams {
	var (
		limitDefault = int32(10)
	)
	return &QueryCampaignBatchNamesParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewQueryCampaignBatchNamesParamsWithContext creates a new QueryCampaignBatchNamesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryCampaignBatchNamesParamsWithContext(ctx context.Context) *QueryCampaignBatchNamesParams {
	var (
		limitDefault = int32(10)
	)
	return &QueryCampaignBatchNamesParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewQueryCampaignBatchNamesParamsWithHTTPClient creates a new QueryCampaignBatchNamesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryCampaignBatchNamesParamsWithHTTPClient(client *http.Client) *QueryCampaignBatchNamesParams {
	var (
		limitDefault = int32(10)
	)
	return &QueryCampaignBatchNamesParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*QueryCampaignBatchNamesParams contains all the parameters to send to the API endpoint
for the query campaign batch names operation typically these are written to a http.Request
*/
type QueryCampaignBatchNamesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string
	/*BatchName*/
	BatchName *string
	/*Limit*/
	Limit *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithTimeout(timeout time.Duration) *QueryCampaignBatchNamesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithContext(ctx context.Context) *QueryCampaignBatchNamesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithHTTPClient(client *http.Client) *QueryCampaignBatchNamesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryCampaignBatchNamesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithCampaignID(campaignID string) *QueryCampaignBatchNamesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithNamespace(namespace string) *QueryCampaignBatchNamesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBatchName_ adds the batchName to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithBatchName_(batchName *string) *QueryCampaignBatchNamesParams {
	o.SetBatchName(batchName)
	return o
}

// SetBatchName adds the batchName to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetBatchName(batchName *string) {
	o.BatchName = batchName
}

// WithLimit adds the limit to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) WithLimit(limit *int32) *QueryCampaignBatchNamesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query campaign batch names params
func (o *QueryCampaignBatchNamesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *QueryCampaignBatchNamesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.BatchName != nil {

		// query param batchName
		var qrBatchName string
		if o.BatchName != nil {
			qrBatchName = *o.BatchName
		}
		qBatchName := qrBatchName
		if qBatchName != "" {
			if err := r.SetQueryParam("batchName", qBatchName); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

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
