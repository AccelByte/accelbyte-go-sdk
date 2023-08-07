// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content

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

// NewPublicGetUserContentParams creates a new PublicGetUserContentParams object
// with the default values initialized.
func NewPublicGetUserContentParams() *PublicGetUserContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserContentParamsWithTimeout creates a new PublicGetUserContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserContentParamsWithTimeout(timeout time.Duration) *PublicGetUserContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetUserContentParamsWithContext creates a new PublicGetUserContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserContentParamsWithContext(ctx context.Context) *PublicGetUserContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetUserContentParamsWithHTTPClient creates a new PublicGetUserContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserContentParamsWithHTTPClient(client *http.Client) *PublicGetUserContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicGetUserContentParams contains all the parameters to send to the API endpoint
for the public get user content operation typically these are written to a http.Request
*/
type PublicGetUserContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user content params
func (o *PublicGetUserContentParams) WithTimeout(timeout time.Duration) *PublicGetUserContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user content params
func (o *PublicGetUserContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user content params
func (o *PublicGetUserContentParams) WithContext(ctx context.Context) *PublicGetUserContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user content params
func (o *PublicGetUserContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user content params
func (o *PublicGetUserContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user content params
func (o *PublicGetUserContentParams) WithHTTPClient(client *http.Client) *PublicGetUserContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user content params
func (o *PublicGetUserContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user content params
func (o *PublicGetUserContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user content params
func (o *PublicGetUserContentParams) WithNamespace(namespace string) *PublicGetUserContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user content params
func (o *PublicGetUserContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user content params
func (o *PublicGetUserContentParams) WithUserID(userID string) *PublicGetUserContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user content params
func (o *PublicGetUserContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the public get user content params
func (o *PublicGetUserContentParams) WithLimit(limit *int64) *PublicGetUserContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user content params
func (o *PublicGetUserContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get user content params
func (o *PublicGetUserContentParams) WithOffset(offset *int64) *PublicGetUserContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get user content params
func (o *PublicGetUserContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
