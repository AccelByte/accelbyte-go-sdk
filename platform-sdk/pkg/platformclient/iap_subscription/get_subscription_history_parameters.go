// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// NewGetSubscriptionHistoryParams creates a new GetSubscriptionHistoryParams object
// with the default values initialized.
func NewGetSubscriptionHistoryParams() *GetSubscriptionHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetSubscriptionHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSubscriptionHistoryParamsWithTimeout creates a new GetSubscriptionHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSubscriptionHistoryParamsWithTimeout(timeout time.Duration) *GetSubscriptionHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetSubscriptionHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetSubscriptionHistoryParamsWithContext creates a new GetSubscriptionHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSubscriptionHistoryParamsWithContext(ctx context.Context) *GetSubscriptionHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetSubscriptionHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetSubscriptionHistoryParamsWithHTTPClient creates a new GetSubscriptionHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSubscriptionHistoryParamsWithHTTPClient(client *http.Client) *GetSubscriptionHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetSubscriptionHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetSubscriptionHistoryParams contains all the parameters to send to the API endpoint
for the get subscription history operation typically these are written to a http.Request
*/
type GetSubscriptionHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
	/*Namespace*/
	Namespace string
	/*UserID*/
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

// WithTimeout adds the timeout to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithTimeout(timeout time.Duration) *GetSubscriptionHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithContext(ctx context.Context) *GetSubscriptionHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithHTTPClient(client *http.Client) *GetSubscriptionHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSubscriptionHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithID(idVar string) *GetSubscriptionHistoryParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithNamespace(namespace string) *GetSubscriptionHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithUserID(userID string) *GetSubscriptionHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithLimit(limit *int32) *GetSubscriptionHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get subscription history params
func (o *GetSubscriptionHistoryParams) WithOffset(offset *int32) *GetSubscriptionHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get subscription history params
func (o *GetSubscriptionHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetSubscriptionHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
