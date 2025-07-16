// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewQueryAbnormalTransactionsParams creates a new QueryAbnormalTransactionsParams object
// with the default values initialized.
func NewQueryAbnormalTransactionsParams() *QueryAbnormalTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryAbnormalTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryAbnormalTransactionsParamsWithTimeout creates a new QueryAbnormalTransactionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryAbnormalTransactionsParamsWithTimeout(timeout time.Duration) *QueryAbnormalTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryAbnormalTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryAbnormalTransactionsParamsWithContext creates a new QueryAbnormalTransactionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryAbnormalTransactionsParamsWithContext(ctx context.Context) *QueryAbnormalTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryAbnormalTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryAbnormalTransactionsParamsWithHTTPClient creates a new QueryAbnormalTransactionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryAbnormalTransactionsParamsWithHTTPClient(client *http.Client) *QueryAbnormalTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryAbnormalTransactionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryAbnormalTransactionsParams contains all the parameters to send to the API endpoint
for the query abnormal transactions operation typically these are written to a http.Request
*/
type QueryAbnormalTransactionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*OrderID*/
	OrderID *string
	/*SteamID*/
	SteamID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithTimeout(timeout time.Duration) *QueryAbnormalTransactionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithContext(ctx context.Context) *QueryAbnormalTransactionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithHTTPClient(client *http.Client) *QueryAbnormalTransactionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryAbnormalTransactionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithNamespace(namespace string) *QueryAbnormalTransactionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithLimit(limit *int32) *QueryAbnormalTransactionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithOffset(offset *int32) *QueryAbnormalTransactionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithOrderID adds the orderID to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithOrderID(orderID *string) *QueryAbnormalTransactionsParams {
	o.SetOrderID(orderID)
	return o
}

// SetOrderID adds the orderId to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetOrderID(orderID *string) {
	o.OrderID = orderID
}

// WithSteamID adds the steamID to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) WithSteamID(steamID *string) *QueryAbnormalTransactionsParams {
	o.SetSteamID(steamID)
	return o
}

// SetSteamID adds the steamId to the query abnormal transactions params
func (o *QueryAbnormalTransactionsParams) SetSteamID(steamID *string) {
	o.SteamID = steamID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryAbnormalTransactionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.OrderID != nil {

		// query param orderId
		var qrOrderID string
		if o.OrderID != nil {
			qrOrderID = *o.OrderID
		}
		qOrderID := qrOrderID
		if qOrderID != "" {
			if err := r.SetQueryParam("orderId", qOrderID); err != nil {
				return err
			}
		}

	}

	if o.SteamID != nil {

		// query param steamId
		var qrSteamID string
		if o.SteamID != nil {
			qrSteamID = *o.SteamID
		}
		qSteamID := qrSteamID
		if qSteamID != "" {
			if err := r.SetQueryParam("steamId", qSteamID); err != nil {
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
