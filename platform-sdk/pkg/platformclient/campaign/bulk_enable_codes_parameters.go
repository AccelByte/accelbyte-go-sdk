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

// NewBulkEnableCodesParams creates a new BulkEnableCodesParams object
// with the default values initialized.
func NewBulkEnableCodesParams() *BulkEnableCodesParams {
	var ()
	return &BulkEnableCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkEnableCodesParamsWithTimeout creates a new BulkEnableCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkEnableCodesParamsWithTimeout(timeout time.Duration) *BulkEnableCodesParams {
	var ()
	return &BulkEnableCodesParams{

		timeout: timeout,
	}
}

// NewBulkEnableCodesParamsWithContext creates a new BulkEnableCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkEnableCodesParamsWithContext(ctx context.Context) *BulkEnableCodesParams {
	var ()
	return &BulkEnableCodesParams{

		Context: ctx,
	}
}

// NewBulkEnableCodesParamsWithHTTPClient creates a new BulkEnableCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkEnableCodesParamsWithHTTPClient(client *http.Client) *BulkEnableCodesParams {
	var ()
	return &BulkEnableCodesParams{
		HTTPClient: client,
	}
}

/*BulkEnableCodesParams contains all the parameters to send to the API endpoint
for the bulk enable codes operation typically these are written to a http.Request
*/
type BulkEnableCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string
	/*BatchNo
	  if not present will match all except 0

	*/
	BatchNo *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk enable codes params
func (o *BulkEnableCodesParams) WithTimeout(timeout time.Duration) *BulkEnableCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk enable codes params
func (o *BulkEnableCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk enable codes params
func (o *BulkEnableCodesParams) WithContext(ctx context.Context) *BulkEnableCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk enable codes params
func (o *BulkEnableCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk enable codes params
func (o *BulkEnableCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk enable codes params
func (o *BulkEnableCodesParams) WithHTTPClient(client *http.Client) *BulkEnableCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk enable codes params
func (o *BulkEnableCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk enable codes params
func (o *BulkEnableCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkEnableCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the bulk enable codes params
func (o *BulkEnableCodesParams) WithCampaignID(campaignID string) *BulkEnableCodesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the bulk enable codes params
func (o *BulkEnableCodesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the bulk enable codes params
func (o *BulkEnableCodesParams) WithNamespace(namespace string) *BulkEnableCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk enable codes params
func (o *BulkEnableCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBatchNo adds the batchNo to the bulk enable codes params
func (o *BulkEnableCodesParams) WithBatchNo(batchNo *int32) *BulkEnableCodesParams {
	o.SetBatchNo(batchNo)
	return o
}

// SetBatchNo adds the batchNo to the bulk enable codes params
func (o *BulkEnableCodesParams) SetBatchNo(batchNo *int32) {
	o.BatchNo = batchNo
}

// WriteToRequest writes these params to a swagger request
func (o *BulkEnableCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.BatchNo != nil {

		// query param batchNo
		var qrBatchNo int32
		if o.BatchNo != nil {
			qrBatchNo = *o.BatchNo
		}
		qBatchNo := swag.FormatInt32(qrBatchNo)
		if qBatchNo != "" {
			if err := r.SetQueryParam("batchNo", qBatchNo); err != nil {
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
