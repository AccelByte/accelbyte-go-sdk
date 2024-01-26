// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// Get the enum in QueryWalletsParams
const (
	QueryWalletsEpicConstant        = "Epic"
	QueryWalletsGooglePlayConstant  = "GooglePlay"
	QueryWalletsIOSConstant         = "IOS"
	QueryWalletsNintendoConstant    = "Nintendo"
	QueryWalletsOculusConstant      = "Oculus"
	QueryWalletsOtherConstant       = "Other"
	QueryWalletsPlaystationConstant = "Playstation"
	QueryWalletsSteamConstant       = "Steam"
	QueryWalletsSystemConstant      = "System"
	QueryWalletsTwitchConstant      = "Twitch"
	QueryWalletsXboxConstant        = "Xbox"
)

// NewQueryWalletsParams creates a new QueryWalletsParams object
// with the default values initialized.
func NewQueryWalletsParams() *QueryWalletsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryWalletsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryWalletsParamsWithTimeout creates a new QueryWalletsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryWalletsParamsWithTimeout(timeout time.Duration) *QueryWalletsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryWalletsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryWalletsParamsWithContext creates a new QueryWalletsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryWalletsParamsWithContext(ctx context.Context) *QueryWalletsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryWalletsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryWalletsParamsWithHTTPClient creates a new QueryWalletsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryWalletsParamsWithHTTPClient(client *http.Client) *QueryWalletsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryWalletsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryWalletsParams contains all the parameters to send to the API endpoint
for the query wallets operation typically these are written to a http.Request
*/
type QueryWalletsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*CurrencyCode
	  currencyCode

	*/
	CurrencyCode *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Origin
	  balance origin

	*/
	Origin *string
	/*UserID
	  userId

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query wallets params
func (o *QueryWalletsParams) WithTimeout(timeout time.Duration) *QueryWalletsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query wallets params
func (o *QueryWalletsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query wallets params
func (o *QueryWalletsParams) WithContext(ctx context.Context) *QueryWalletsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query wallets params
func (o *QueryWalletsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query wallets params
func (o *QueryWalletsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query wallets params
func (o *QueryWalletsParams) WithHTTPClient(client *http.Client) *QueryWalletsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query wallets params
func (o *QueryWalletsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query wallets params
func (o *QueryWalletsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryWalletsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query wallets params
func (o *QueryWalletsParams) WithNamespace(namespace string) *QueryWalletsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query wallets params
func (o *QueryWalletsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCurrencyCode adds the currencyCode to the query wallets params
func (o *QueryWalletsParams) WithCurrencyCode(currencyCode *string) *QueryWalletsParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the query wallets params
func (o *QueryWalletsParams) SetCurrencyCode(currencyCode *string) {
	o.CurrencyCode = currencyCode
}

// WithLimit adds the limit to the query wallets params
func (o *QueryWalletsParams) WithLimit(limit *int32) *QueryWalletsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query wallets params
func (o *QueryWalletsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query wallets params
func (o *QueryWalletsParams) WithOffset(offset *int32) *QueryWalletsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query wallets params
func (o *QueryWalletsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithOrigin adds the origin to the query wallets params
func (o *QueryWalletsParams) WithOrigin(origin *string) *QueryWalletsParams {
	o.SetOrigin(origin)
	return o
}

// SetOrigin adds the origin to the query wallets params
func (o *QueryWalletsParams) SetOrigin(origin *string) {
	o.Origin = origin
}

// WithUserID adds the userID to the query wallets params
func (o *QueryWalletsParams) WithUserID(userID *string) *QueryWalletsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query wallets params
func (o *QueryWalletsParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryWalletsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CurrencyCode != nil {

		// query param currencyCode
		var qrCurrencyCode string
		if o.CurrencyCode != nil {
			qrCurrencyCode = *o.CurrencyCode
		}
		qCurrencyCode := qrCurrencyCode
		if qCurrencyCode != "" {
			if err := r.SetQueryParam("currencyCode", qCurrencyCode); err != nil {
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

	if o.Origin != nil {

		// query param origin
		var qrOrigin string
		if o.Origin != nil {
			qrOrigin = *o.Origin
		}
		qOrigin := qrOrigin
		if qOrigin != "" {
			if err := r.SetQueryParam("origin", qOrigin); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
