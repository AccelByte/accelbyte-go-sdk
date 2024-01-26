// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// NewPublicGetUserPersonalDataRequestsParams creates a new PublicGetUserPersonalDataRequestsParams object
// with the default values initialized.
func NewPublicGetUserPersonalDataRequestsParams() *PublicGetUserPersonalDataRequestsParams {
	var ()
	return &PublicGetUserPersonalDataRequestsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserPersonalDataRequestsParamsWithTimeout creates a new PublicGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserPersonalDataRequestsParamsWithTimeout(timeout time.Duration) *PublicGetUserPersonalDataRequestsParams {
	var ()
	return &PublicGetUserPersonalDataRequestsParams{

		timeout: timeout,
	}
}

// NewPublicGetUserPersonalDataRequestsParamsWithContext creates a new PublicGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserPersonalDataRequestsParamsWithContext(ctx context.Context) *PublicGetUserPersonalDataRequestsParams {
	var ()
	return &PublicGetUserPersonalDataRequestsParams{

		Context: ctx,
	}
}

// NewPublicGetUserPersonalDataRequestsParamsWithHTTPClient creates a new PublicGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserPersonalDataRequestsParamsWithHTTPClient(client *http.Client) *PublicGetUserPersonalDataRequestsParams {
	var ()
	return &PublicGetUserPersonalDataRequestsParams{
		HTTPClient: client,
	}
}

/*PublicGetUserPersonalDataRequestsParams contains all the parameters to send to the API endpoint
for the public get user personal data requests operation typically these are written to a http.Request
*/
type PublicGetUserPersonalDataRequestsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*UserID
	  IAM id of the user

	*/
	UserID string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithTimeout(timeout time.Duration) *PublicGetUserPersonalDataRequestsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithContext(ctx context.Context) *PublicGetUserPersonalDataRequestsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithHTTPClient(client *http.Client) *PublicGetUserPersonalDataRequestsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserPersonalDataRequestsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithNamespace(namespace string) *PublicGetUserPersonalDataRequestsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithUserID(userID string) *PublicGetUserPersonalDataRequestsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithLimit(limit *int64) *PublicGetUserPersonalDataRequestsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) WithOffset(offset *int64) *PublicGetUserPersonalDataRequestsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get user personal data requests params
func (o *PublicGetUserPersonalDataRequestsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserPersonalDataRequestsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
