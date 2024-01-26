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

// NewPublicListUserWalletTransactionsParams creates a new PublicListUserWalletTransactionsParams object
// with the default values initialized.
func NewPublicListUserWalletTransactionsParams() *PublicListUserWalletTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListUserWalletTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListUserWalletTransactionsParamsWithTimeout creates a new PublicListUserWalletTransactionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListUserWalletTransactionsParamsWithTimeout(timeout time.Duration) *PublicListUserWalletTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListUserWalletTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicListUserWalletTransactionsParamsWithContext creates a new PublicListUserWalletTransactionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListUserWalletTransactionsParamsWithContext(ctx context.Context) *PublicListUserWalletTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListUserWalletTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicListUserWalletTransactionsParamsWithHTTPClient creates a new PublicListUserWalletTransactionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListUserWalletTransactionsParamsWithHTTPClient(client *http.Client) *PublicListUserWalletTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListUserWalletTransactionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicListUserWalletTransactionsParams contains all the parameters to send to the API endpoint
for the public list user wallet transactions operation typically these are written to a http.Request
*/
type PublicListUserWalletTransactionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CurrencyCode
	  currencyCode

	*/
	CurrencyCode string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithTimeout(timeout time.Duration) *PublicListUserWalletTransactionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithContext(ctx context.Context) *PublicListUserWalletTransactionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithHTTPClient(client *http.Client) *PublicListUserWalletTransactionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListUserWalletTransactionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCurrencyCode adds the currencyCode to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithCurrencyCode(currencyCode string) *PublicListUserWalletTransactionsParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithNamespace(namespace string) *PublicListUserWalletTransactionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithUserID(userID string) *PublicListUserWalletTransactionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithLimit(limit *int32) *PublicListUserWalletTransactionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) WithOffset(offset *int32) *PublicListUserWalletTransactionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list user wallet transactions params
func (o *PublicListUserWalletTransactionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListUserWalletTransactionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
