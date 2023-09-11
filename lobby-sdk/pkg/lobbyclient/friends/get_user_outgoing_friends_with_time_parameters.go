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

// NewGetUserOutgoingFriendsWithTimeParams creates a new GetUserOutgoingFriendsWithTimeParams object
// with the default values initialized.
func NewGetUserOutgoingFriendsWithTimeParams() *GetUserOutgoingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserOutgoingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserOutgoingFriendsWithTimeParamsWithTimeout creates a new GetUserOutgoingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserOutgoingFriendsWithTimeParamsWithTimeout(timeout time.Duration) *GetUserOutgoingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserOutgoingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserOutgoingFriendsWithTimeParamsWithContext creates a new GetUserOutgoingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserOutgoingFriendsWithTimeParamsWithContext(ctx context.Context) *GetUserOutgoingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserOutgoingFriendsWithTimeParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserOutgoingFriendsWithTimeParamsWithHTTPClient creates a new GetUserOutgoingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserOutgoingFriendsWithTimeParamsWithHTTPClient(client *http.Client) *GetUserOutgoingFriendsWithTimeParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserOutgoingFriendsWithTimeParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserOutgoingFriendsWithTimeParams contains all the parameters to send to the API endpoint
for the get user outgoing friends with time operation typically these are written to a http.Request
*/
type GetUserOutgoingFriendsWithTimeParams struct {

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
}

// WithTimeout adds the timeout to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithTimeout(timeout time.Duration) *GetUserOutgoingFriendsWithTimeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithContext(ctx context.Context) *GetUserOutgoingFriendsWithTimeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithHTTPClient(client *http.Client) *GetUserOutgoingFriendsWithTimeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithNamespace(namespace string) *GetUserOutgoingFriendsWithTimeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithLimit(limit *int64) *GetUserOutgoingFriendsWithTimeParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) WithOffset(offset *int64) *GetUserOutgoingFriendsWithTimeParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user outgoing friends with time params
func (o *GetUserOutgoingFriendsWithTimeParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserOutgoingFriendsWithTimeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
