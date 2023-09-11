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

// NewGetOutgoingFriendRequestsParams creates a new GetOutgoingFriendRequestsParams object
// with the default values initialized.
func NewGetOutgoingFriendRequestsParams() *GetOutgoingFriendRequestsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOutgoingFriendRequestsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetOutgoingFriendRequestsParamsWithTimeout creates a new GetOutgoingFriendRequestsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetOutgoingFriendRequestsParamsWithTimeout(timeout time.Duration) *GetOutgoingFriendRequestsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOutgoingFriendRequestsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetOutgoingFriendRequestsParamsWithContext creates a new GetOutgoingFriendRequestsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetOutgoingFriendRequestsParamsWithContext(ctx context.Context) *GetOutgoingFriendRequestsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOutgoingFriendRequestsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetOutgoingFriendRequestsParamsWithHTTPClient creates a new GetOutgoingFriendRequestsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetOutgoingFriendRequestsParamsWithHTTPClient(client *http.Client) *GetOutgoingFriendRequestsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOutgoingFriendRequestsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetOutgoingFriendRequestsParams contains all the parameters to send to the API endpoint
for the get outgoing friend requests operation typically these are written to a http.Request
*/
type GetOutgoingFriendRequestsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
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
}

// WithTimeout adds the timeout to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithTimeout(timeout time.Duration) *GetOutgoingFriendRequestsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithContext(ctx context.Context) *GetOutgoingFriendRequestsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithHTTPClient(client *http.Client) *GetOutgoingFriendRequestsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithNamespace(namespace string) *GetOutgoingFriendRequestsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithUserID(userID string) *GetOutgoingFriendRequestsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithLimit(limit *int64) *GetOutgoingFriendRequestsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) WithOffset(offset *int64) *GetOutgoingFriendRequestsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get outgoing friend requests params
func (o *GetOutgoingFriendRequestsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetOutgoingFriendRequestsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
