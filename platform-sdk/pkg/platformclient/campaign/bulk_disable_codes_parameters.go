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

// NewBulkDisableCodesParams creates a new BulkDisableCodesParams object
// with the default values initialized.
func NewBulkDisableCodesParams() *BulkDisableCodesParams {
	var ()
	return &BulkDisableCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkDisableCodesParamsWithTimeout creates a new BulkDisableCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkDisableCodesParamsWithTimeout(timeout time.Duration) *BulkDisableCodesParams {
	var ()
	return &BulkDisableCodesParams{

		timeout: timeout,
	}
}

// NewBulkDisableCodesParamsWithContext creates a new BulkDisableCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkDisableCodesParamsWithContext(ctx context.Context) *BulkDisableCodesParams {
	var ()
	return &BulkDisableCodesParams{

		Context: ctx,
	}
}

// NewBulkDisableCodesParamsWithHTTPClient creates a new BulkDisableCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkDisableCodesParamsWithHTTPClient(client *http.Client) *BulkDisableCodesParams {
	var ()
	return &BulkDisableCodesParams{
		HTTPClient: client,
	}
}

/*BulkDisableCodesParams contains all the parameters to send to the API endpoint
for the bulk disable codes operation typically these are written to a http.Request
*/
type BulkDisableCodesParams struct {

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

// WithTimeout adds the timeout to the bulk disable codes params
func (o *BulkDisableCodesParams) WithTimeout(timeout time.Duration) *BulkDisableCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk disable codes params
func (o *BulkDisableCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk disable codes params
func (o *BulkDisableCodesParams) WithContext(ctx context.Context) *BulkDisableCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk disable codes params
func (o *BulkDisableCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk disable codes params
func (o *BulkDisableCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk disable codes params
func (o *BulkDisableCodesParams) WithHTTPClient(client *http.Client) *BulkDisableCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk disable codes params
func (o *BulkDisableCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk disable codes params
func (o *BulkDisableCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkDisableCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the bulk disable codes params
func (o *BulkDisableCodesParams) WithCampaignID(campaignID string) *BulkDisableCodesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the bulk disable codes params
func (o *BulkDisableCodesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the bulk disable codes params
func (o *BulkDisableCodesParams) WithNamespace(namespace string) *BulkDisableCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk disable codes params
func (o *BulkDisableCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBatchNo adds the batchNo to the bulk disable codes params
func (o *BulkDisableCodesParams) WithBatchNo(batchNo *int32) *BulkDisableCodesParams {
	o.SetBatchNo(batchNo)
	return o
}

// SetBatchNo adds the batchNo to the bulk disable codes params
func (o *BulkDisableCodesParams) SetBatchNo(batchNo *int32) {
	o.BatchNo = batchNo
}

// WriteToRequest writes these params to a swagger request
func (o *BulkDisableCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
