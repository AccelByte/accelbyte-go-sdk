// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

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

// Get the enum in QueryPaymentOrdersParams
const (
	QueryPaymentOrdersEXTERNALConstant = "EXTERNAL"
	QueryPaymentOrdersINTERNALConstant = "INTERNAL"
)

// Get the enum in QueryPaymentOrdersParams
const (
	QueryPaymentOrdersAUTHORISEDConstant               = "AUTHORISED"
	QueryPaymentOrdersAUTHORISEFAILEDConstant          = "AUTHORISE_FAILED"
	QueryPaymentOrdersCHARGEBACKConstant               = "CHARGEBACK"
	QueryPaymentOrdersCHARGEBACKREVERSEDConstant       = "CHARGEBACK_REVERSED"
	QueryPaymentOrdersCHARGEDConstant                  = "CHARGED"
	QueryPaymentOrdersCHARGEFAILEDConstant             = "CHARGE_FAILED"
	QueryPaymentOrdersDELETEDConstant                  = "DELETED"
	QueryPaymentOrdersINITConstant                     = "INIT"
	QueryPaymentOrdersNOTIFICATIONOFCHARGEBACKConstant = "NOTIFICATION_OF_CHARGEBACK"
	QueryPaymentOrdersREFUNDEDConstant                 = "REFUNDED"
	QueryPaymentOrdersREFUNDINGConstant                = "REFUNDING"
	QueryPaymentOrdersREFUNDFAILEDConstant             = "REFUND_FAILED"
	QueryPaymentOrdersREQUESTFORINFORMATIONConstant    = "REQUEST_FOR_INFORMATION"
)

// NewQueryPaymentOrdersParams creates a new QueryPaymentOrdersParams object
// with the default values initialized.
func NewQueryPaymentOrdersParams() *QueryPaymentOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryPaymentOrdersParamsWithTimeout creates a new QueryPaymentOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryPaymentOrdersParamsWithTimeout(timeout time.Duration) *QueryPaymentOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryPaymentOrdersParamsWithContext creates a new QueryPaymentOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryPaymentOrdersParamsWithContext(ctx context.Context) *QueryPaymentOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentOrdersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryPaymentOrdersParamsWithHTTPClient creates a new QueryPaymentOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryPaymentOrdersParamsWithHTTPClient(client *http.Client) *QueryPaymentOrdersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentOrdersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryPaymentOrdersParams contains all the parameters to send to the API endpoint
for the query payment orders operation typically these are written to a http.Request
*/
type QueryPaymentOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Channel*/
	Channel *string
	/*ExtTxID*/
	ExtTxID *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Status*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query payment orders params
func (o *QueryPaymentOrdersParams) WithTimeout(timeout time.Duration) *QueryPaymentOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query payment orders params
func (o *QueryPaymentOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query payment orders params
func (o *QueryPaymentOrdersParams) WithContext(ctx context.Context) *QueryPaymentOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query payment orders params
func (o *QueryPaymentOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query payment orders params
func (o *QueryPaymentOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query payment orders params
func (o *QueryPaymentOrdersParams) WithHTTPClient(client *http.Client) *QueryPaymentOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query payment orders params
func (o *QueryPaymentOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query payment orders params
func (o *QueryPaymentOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryPaymentOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query payment orders params
func (o *QueryPaymentOrdersParams) WithNamespace(namespace string) *QueryPaymentOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query payment orders params
func (o *QueryPaymentOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChannel adds the channel to the query payment orders params
func (o *QueryPaymentOrdersParams) WithChannel(channel *string) *QueryPaymentOrdersParams {
	o.SetChannel(channel)
	return o
}

// SetChannel adds the channel to the query payment orders params
func (o *QueryPaymentOrdersParams) SetChannel(channel *string) {
	o.Channel = channel
}

// WithExtTxID adds the extTxID to the query payment orders params
func (o *QueryPaymentOrdersParams) WithExtTxID(extTxID *string) *QueryPaymentOrdersParams {
	o.SetExtTxID(extTxID)
	return o
}

// SetExtTxID adds the extTxId to the query payment orders params
func (o *QueryPaymentOrdersParams) SetExtTxID(extTxID *string) {
	o.ExtTxID = extTxID
}

// WithLimit adds the limit to the query payment orders params
func (o *QueryPaymentOrdersParams) WithLimit(limit *int32) *QueryPaymentOrdersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query payment orders params
func (o *QueryPaymentOrdersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query payment orders params
func (o *QueryPaymentOrdersParams) WithOffset(offset *int32) *QueryPaymentOrdersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query payment orders params
func (o *QueryPaymentOrdersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the query payment orders params
func (o *QueryPaymentOrdersParams) WithStatus(status *string) *QueryPaymentOrdersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query payment orders params
func (o *QueryPaymentOrdersParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *QueryPaymentOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Channel != nil {

		// query param channel
		var qrChannel string
		if o.Channel != nil {
			qrChannel = *o.Channel
		}
		qChannel := qrChannel
		if qChannel != "" {
			if err := r.SetQueryParam("channel", qChannel); err != nil {
				return err
			}
		}

	}

	if o.ExtTxID != nil {

		// query param extTxId
		var qrExtTxID string
		if o.ExtTxID != nil {
			qrExtTxID = *o.ExtTxID
		}
		qExtTxID := qrExtTxID
		if qExtTxID != "" {
			if err := r.SetQueryParam("extTxId", qExtTxID); err != nil {
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

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
