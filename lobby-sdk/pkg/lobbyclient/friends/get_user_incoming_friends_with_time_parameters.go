// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// NewGetUserIncomingFriendsWithTimeParams creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized.
func NewGetUserIncomingFriendsWithTimeParams() *GetUserIncomingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserIncomingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithTimeout creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserIncomingFriendsWithTimeParamsWithTimeout(timeout time.Duration) *GetUserIncomingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserIncomingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithContext creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserIncomingFriendsWithTimeParamsWithContext(ctx context.Context) *GetUserIncomingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserIncomingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithHTTPClient creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserIncomingFriendsWithTimeParamsWithHTTPClient(client *http.Client) *GetUserIncomingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserIncomingFriendsWithTimeParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserIncomingFriendsWithTimeParams contains all the parameters to send to the API endpoint
for the get user incoming friends with time operation typically these are written to a http.Request
*/
type GetUserIncomingFriendsWithTimeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  maximum number of data

	*/
	Limit *int64
	/*Offset
	  numbers of row to skip within the result

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithTimeout(timeout time.Duration) *GetUserIncomingFriendsWithTimeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithContext(ctx context.Context) *GetUserIncomingFriendsWithTimeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithHTTPClient(client *http.Client) *GetUserIncomingFriendsWithTimeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserIncomingFriendsWithTimeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithNamespace(namespace string) *GetUserIncomingFriendsWithTimeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithLimit(limit *int64) *GetUserIncomingFriendsWithTimeParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithOffset(offset *int64) *GetUserIncomingFriendsWithTimeParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserIncomingFriendsWithTimeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
