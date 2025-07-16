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

// Deprecated: 2025-07-16 - Use GenerateInvoiceSummaryItemType<EnumValue>Constant instead.
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

// Get the enum in GenerateInvoiceSummaryParams
const (
	GenerateInvoiceSummaryItemTypeAPPConstant          = "APP"
	GenerateInvoiceSummaryItemTypeBUNDLEConstant       = "BUNDLE"
	GenerateInvoiceSummaryItemTypeCODEConstant         = "CODE"
	GenerateInvoiceSummaryItemTypeCOINSConstant        = "COINS"
	GenerateInvoiceSummaryItemTypeEXTENSIONConstant    = "EXTENSION"
	GenerateInvoiceSummaryItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	GenerateInvoiceSummaryItemTypeLOOTBOXConstant      = "LOOTBOX"
	GenerateInvoiceSummaryItemTypeMEDIAConstant        = "MEDIA"
	GenerateInvoiceSummaryItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	GenerateInvoiceSummaryItemTypeSEASONConstant       = "SEASON"
	GenerateInvoiceSummaryItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
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
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime string
	/*Feature*/
	Feature string
	/*ItemID*/
	ItemID string
	/*ItemType*/
	ItemType string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
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

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GenerateInvoiceSummaryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
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

// WithEndTime adds the endTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithEndTime(endTime string) *GenerateInvoiceSummaryParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetEndTime(endTime string) {
	o.EndTime = endTime
}

// WithFeature adds the feature to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithFeature(feature string) *GenerateInvoiceSummaryParams {
	o.SetFeature(feature)
	return o
}

// SetFeature adds the feature to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetFeature(feature string) {
	o.Feature = feature
}

// WithItemID adds the itemID to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithItemID(itemID string) *GenerateInvoiceSummaryParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithItemType adds the itemType to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) WithItemType(itemType string) *GenerateInvoiceSummaryParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the generate invoice summary params
func (o *GenerateInvoiceSummaryParams) SetItemType(itemType string) {
	o.ItemType = itemType
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

	// query param endTime
	qrEndTime := o.EndTime
	qEndTime := qrEndTime
	if qEndTime != "" {
		if err := r.SetQueryParam("endTime", qEndTime); err != nil {
			return err
		}
	}

	// query param feature
	qrFeature := o.Feature
	qFeature := qrFeature
	if qFeature != "" {
		if err := r.SetQueryParam("feature", qFeature); err != nil {
			return err
		}
	}

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
			return err
		}
	}

	// query param itemType
	qrItemType := o.ItemType
	qItemType := qrItemType
	if qItemType != "" {
		if err := r.SetQueryParam("itemType", qItemType); err != nil {
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
