// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

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

// NewAdminQueryPartyDetailParams creates a new AdminQueryPartyDetailParams object
// with the default values initialized.
func NewAdminQueryPartyDetailParams() *AdminQueryPartyDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartyDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryPartyDetailParamsWithTimeout creates a new AdminQueryPartyDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryPartyDetailParamsWithTimeout(timeout time.Duration) *AdminQueryPartyDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartyDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryPartyDetailParamsWithContext creates a new AdminQueryPartyDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryPartyDetailParamsWithContext(ctx context.Context) *AdminQueryPartyDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartyDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryPartyDetailParamsWithHTTPClient creates a new AdminQueryPartyDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryPartyDetailParamsWithHTTPClient(client *http.Client) *AdminQueryPartyDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartyDetailParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryPartyDetailParams contains all the parameters to send to the API endpoint
for the admin query party detail operation typically these are written to a http.Request
*/
type AdminQueryPartyDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: createdAt (default)

	*/
	OrderBy *string
	/*PartyID
	  party ID

	*/
	PartyID *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithTimeout(timeout time.Duration) *AdminQueryPartyDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithContext(ctx context.Context) *AdminQueryPartyDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithHTTPClient(client *http.Client) *AdminQueryPartyDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryPartyDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithNamespace(namespace string) *AdminQueryPartyDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithLimit(limit *int64) *AdminQueryPartyDetailParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithOffset(offset *int64) *AdminQueryPartyDetailParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithOrder(order *string) *AdminQueryPartyDetailParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithOrderBy(orderBy *string) *AdminQueryPartyDetailParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithPartyID adds the partyID to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithPartyID(partyID *string) *AdminQueryPartyDetailParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the admin query party detail params
func (o *AdminQueryPartyDetailParams) WithUserID(userID *string) *AdminQueryPartyDetailParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query party detail params
func (o *AdminQueryPartyDetailParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryPartyDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.PartyID != nil {

		// query param partyID
		var qrPartyID string
		if o.PartyID != nil {
			qrPartyID = *o.PartyID
		}
		qPartyID := qrPartyID
		if qPartyID != "" {
			if err := r.SetQueryParam("partyID", qPartyID); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userID
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userID", qUserID); err != nil {
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
