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

// NewPublicQueryGameSessionMeParams creates a new PublicQueryGameSessionMeParams object
// with the default values initialized.
func NewPublicQueryGameSessionMeParams() *PublicQueryGameSessionMeParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicQueryGameSessionMeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryGameSessionMeParamsWithTimeout creates a new PublicQueryGameSessionMeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryGameSessionMeParamsWithTimeout(timeout time.Duration) *PublicQueryGameSessionMeParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicQueryGameSessionMeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicQueryGameSessionMeParamsWithContext creates a new PublicQueryGameSessionMeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryGameSessionMeParamsWithContext(ctx context.Context) *PublicQueryGameSessionMeParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicQueryGameSessionMeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicQueryGameSessionMeParamsWithHTTPClient creates a new PublicQueryGameSessionMeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryGameSessionMeParamsWithHTTPClient(client *http.Client) *PublicQueryGameSessionMeParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicQueryGameSessionMeParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicQueryGameSessionMeParams contains all the parameters to send to the API endpoint
for the public query game session me operation typically these are written to a http.Request
*/
type PublicQueryGameSessionMeParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithTimeout(timeout time.Duration) *PublicQueryGameSessionMeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithContext(ctx context.Context) *PublicQueryGameSessionMeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithHTTPClient(client *http.Client) *PublicQueryGameSessionMeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryGameSessionMeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithNamespace(namespace string) *PublicQueryGameSessionMeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithLimit(limit *int64) *PublicQueryGameSessionMeParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithOffset(offset *int64) *PublicQueryGameSessionMeParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the public query game session me params
func (o *PublicQueryGameSessionMeParams) WithOrder(order *string) *PublicQueryGameSessionMeParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the public query game session me params
func (o *PublicQueryGameSessionMeParams) SetOrder(order *string) {
	o.Order = order
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryGameSessionMeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
