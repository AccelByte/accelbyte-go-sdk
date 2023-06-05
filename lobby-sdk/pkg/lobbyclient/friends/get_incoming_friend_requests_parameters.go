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

// NewGetIncomingFriendRequestsParams creates a new GetIncomingFriendRequestsParams object
// with the default values initialized.
func NewGetIncomingFriendRequestsParams() *GetIncomingFriendRequestsParams {
	var ()
	return &GetIncomingFriendRequestsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetIncomingFriendRequestsParamsWithTimeout creates a new GetIncomingFriendRequestsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetIncomingFriendRequestsParamsWithTimeout(timeout time.Duration) *GetIncomingFriendRequestsParams {
	var ()
	return &GetIncomingFriendRequestsParams{

		timeout: timeout,
	}
}

// NewGetIncomingFriendRequestsParamsWithContext creates a new GetIncomingFriendRequestsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetIncomingFriendRequestsParamsWithContext(ctx context.Context) *GetIncomingFriendRequestsParams {
	var ()
	return &GetIncomingFriendRequestsParams{

		Context: ctx,
	}
}

// NewGetIncomingFriendRequestsParamsWithHTTPClient creates a new GetIncomingFriendRequestsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetIncomingFriendRequestsParamsWithHTTPClient(client *http.Client) *GetIncomingFriendRequestsParams {
	var ()
	return &GetIncomingFriendRequestsParams{
		HTTPClient: client,
	}
}

/*GetIncomingFriendRequestsParams contains all the parameters to send to the API endpoint
for the get incoming friend requests operation typically these are written to a http.Request
*/
type GetIncomingFriendRequestsParams struct {

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

// WithTimeout adds the timeout to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithTimeout(timeout time.Duration) *GetIncomingFriendRequestsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithContext(ctx context.Context) *GetIncomingFriendRequestsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithHTTPClient(client *http.Client) *GetIncomingFriendRequestsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithNamespace(namespace string) *GetIncomingFriendRequestsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithUserID(userID string) *GetIncomingFriendRequestsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithLimit(limit *int64) *GetIncomingFriendRequestsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) WithOffset(offset *int64) *GetIncomingFriendRequestsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get incoming friend requests params
func (o *GetIncomingFriendRequestsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetIncomingFriendRequestsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
