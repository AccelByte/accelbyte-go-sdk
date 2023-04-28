// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package invoice

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Get the enum in GenerateInvoiceSummaryParams
const (
	GenerateInvoiceSummaryAPPConstant          = "APP"
	GenerateInvoiceSummaryBUNDLEConstant       = "BUNDLE"
	GenerateInvoiceSummaryCODEConstant         = "CODE"
	GenerateInvoiceSummaryCOINSConstant        = "COINS"
	GenerateInvoiceSummaryEXTENSIONConstant    = "EXTENSION"
	GenerateInvoiceSummaryINGAMEITEMConstant   = "INGAMEITEM"
	GenerateInvoiceSummaryLOOTBOXConstant      = "LOOTBOX"
	GenerateInvoiceSummaryMEDIAConstant        = "MEDIA"
	GenerateInvoiceSummaryOPTIONBOXConstant    = "OPTIONBOX"
	GenerateInvoiceSummarySEASONConstant       = "SEASON"
	GenerateInvoiceSummarySUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewGenerateInvoiceSummaryParams creates a new GenerateInvoiceSummaryParams object
// with the default values initialized.
func NewGenerateInvoiceSummaryParams() *GenerateInvoiceSummaryParams {
	var ()
	return &GenerateInvoiceSummaryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGenerateInvoiceSummaryParamsWithTimeout creates a new GenerateInvoiceSummaryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGenerateInvoiceSummaryParamsWithTimeout(timeout time.Duration) *GenerateInvoiceSummaryParams {
	var ()
	return &GenerateInvoiceSummaryParams{

		timeout: timeout,
	}
}

// NewGenerateInvoiceSummaryParamsWithContext creates a new GenerateInvoiceSummaryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGenerateInvoiceSummaryParamsWithContext(ctx context.Context) *GenerateInvoiceSummaryParams {
	var ()
	return &GenerateInvoiceSummaryParams{

		Context: ctx,
	}
}

// NewGenerateInvoiceSummaryParamsWithHTTPClient creates a new GenerateInvoiceSummaryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGenerateInvoiceSummaryParamsWithHTTPClient(client *http.Client) *GenerateInvoiceSummaryParams {
	var ()
	return &GenerateInvoiceSummaryParams{
		HTTPClient: client,
	}
}

/*GenerateInvoiceSummaryParams contains all the parameters to send to the API endpoint
for the generate invoice summary operation typically these are written to a http.Request
*/
type GenerateInvoiceSummaryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Feature*/
	Feature *string
	/*ItemID*/
	ItemID *string
	/*ItemType*/
	ItemType *string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithTimeout(timeout time.Duration) *GenerateInvoiceSummaryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithContext(ctx context.Context) *GenerateInvoiceSummaryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithHTTPClient(client *http.Client) *GenerateInvoiceSummaryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithNamespace(namespace string) *GenerateInvoiceSummaryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFeature adds the feature to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithFeature(feature *string) *GenerateInvoiceSummaryParams {
	o.SetFeature(feature)
	return o
}

// SetFeature adds the feature to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetFeature(feature *string) {
	o.Feature = feature
}

// WithItemID adds the itemID to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithItemID(itemID *string) *GenerateInvoiceSummaryParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetItemID(itemID *string) {
	o.ItemID = itemID
}

// WithItemType adds the itemType to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithItemType(itemType *string) *GenerateInvoiceSummaryParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithEndTime adds the endTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithEndTime(endTime string) *GenerateInvoiceSummaryParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetEndTime(endTime string) {
	o.EndTime = endTime
}

// WithStartTime adds the startTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithStartTime(startTime string) *GenerateInvoiceSummaryParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetStartTime(startTime string) {
	o.StartTime = startTime
}

// WriteToRequest writes these params to a swagger request
func (o *GenerateInvoiceSummaryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Feature != nil {

		// query param feature
		var qrFeature string
		if o.Feature != nil {
			qrFeature = *o.Feature
		}
		qFeature := qrFeature
		if qFeature != "" {
			if err := r.SetQueryParam("feature", qFeature); err != nil {
				return err
			}
		}

	}

	if o.ItemID != nil {

		// query param itemId
		var qrItemID string
		if o.ItemID != nil {
			qrItemID = *o.ItemID
		}
		qItemID := qrItemID
		if qItemID != "" {
			if err := r.SetQueryParam("itemId", qItemID); err != nil {
				return err
			}
		}

	}

	if o.ItemType != nil {

		// query param itemType
		var qrItemType string
		if o.ItemType != nil {
			qrItemType = *o.ItemType
		}
		qItemType := qrItemType
		if qItemType != "" {
			if err := r.SetQueryParam("itemType", qItemType); err != nil {
				return err
			}
		}

	}

	// query param endTime
	qrEndTime := o.EndTime
	qEndTime := qrEndTime
	if qEndTime != "" {
		if err := r.SetQueryParam("endTime", qEndTime); err != nil {
			return err
		}
	}

	// query param startTime
	qrStartTime := o.StartTime
	qStartTime := qrStartTime
	if qStartTime != "" {
		if err := r.SetQueryParam("startTime", qStartTime); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
