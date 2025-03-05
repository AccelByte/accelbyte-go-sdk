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

// Get the enum in QuerySteamReportHistoriesParams
const (
	QuerySteamReportHistoriesERRORConstant     = "ERROR"
	QuerySteamReportHistoriesIGNOREDConstant   = "IGNORED"
	QuerySteamReportHistoriesPROCESSEDConstant = "PROCESSED"
)

// NewQuerySteamReportHistoriesParams creates a new QuerySteamReportHistoriesParams object
// with the default values initialized.
func NewQuerySteamReportHistoriesParams() *QuerySteamReportHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySteamReportHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQuerySteamReportHistoriesParamsWithTimeout creates a new QuerySteamReportHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQuerySteamReportHistoriesParamsWithTimeout(timeout time.Duration) *QuerySteamReportHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySteamReportHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQuerySteamReportHistoriesParamsWithContext creates a new QuerySteamReportHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQuerySteamReportHistoriesParamsWithContext(ctx context.Context) *QuerySteamReportHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySteamReportHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQuerySteamReportHistoriesParamsWithHTTPClient creates a new QuerySteamReportHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQuerySteamReportHistoriesParamsWithHTTPClient(client *http.Client) *QuerySteamReportHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySteamReportHistoriesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QuerySteamReportHistoriesParams contains all the parameters to send to the API endpoint
for the query steam report histories operation typically these are written to a http.Request
*/
type QuerySteamReportHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*OrderID*/
	OrderID *string
	/*ProcessStatus*/
	ProcessStatus *string
	/*SteamID*/
	SteamID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithTimeout(timeout time.Duration) *QuerySteamReportHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithContext(ctx context.Context) *QuerySteamReportHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithHTTPClient(client *http.Client) *QuerySteamReportHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QuerySteamReportHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithNamespace(namespace string) *QuerySteamReportHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithLimit(limit *int32) *QuerySteamReportHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithOffset(offset *int32) *QuerySteamReportHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithOrderID adds the orderID to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithOrderID(orderID *string) *QuerySteamReportHistoriesParams {
	o.SetOrderID(orderID)
	return o
}

// SetOrderID adds the orderId to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetOrderID(orderID *string) {
	o.OrderID = orderID
}

// WithProcessStatus adds the processStatus to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithProcessStatus(processStatus *string) *QuerySteamReportHistoriesParams {
	o.SetProcessStatus(processStatus)
	return o
}

// SetProcessStatus adds the processStatus to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetProcessStatus(processStatus *string) {
	o.ProcessStatus = processStatus
}

// WithSteamID adds the steamID to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) WithSteamID(steamID *string) *QuerySteamReportHistoriesParams {
	o.SetSteamID(steamID)
	return o
}

// SetSteamID adds the steamId to the query steam report histories params
func (o *QuerySteamReportHistoriesParams) SetSteamID(steamID *string) {
	o.SteamID = steamID
}

// WriteToRequest writes these params to a swagger request
func (o *QuerySteamReportHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ProcessStatus != nil {

		// query param processStatus
		var qrProcessStatus string
		if o.ProcessStatus != nil {
			qrProcessStatus = *o.ProcessStatus
		}
		qProcessStatus := qrProcessStatus
		if qProcessStatus != "" {
			if err := r.SetQueryParam("processStatus", qProcessStatus); err != nil {
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
