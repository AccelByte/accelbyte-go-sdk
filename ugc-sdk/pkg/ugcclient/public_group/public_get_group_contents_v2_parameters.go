// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_group

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

// NewPublicGetGroupContentsV2Params creates a new PublicGetGroupContentsV2Params object
// with the default values initialized.
func NewPublicGetGroupContentsV2Params() *PublicGetGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetGroupContentsV2ParamsWithTimeout creates a new PublicGetGroupContentsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetGroupContentsV2ParamsWithTimeout(timeout time.Duration) *PublicGetGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetGroupContentsV2ParamsWithContext creates a new PublicGetGroupContentsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetGroupContentsV2ParamsWithContext(ctx context.Context) *PublicGetGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetGroupContentsV2ParamsWithHTTPClient creates a new PublicGetGroupContentsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetGroupContentsV2ParamsWithHTTPClient(client *http.Client) *PublicGetGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetGroupContentsV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicGetGroupContentsV2Params contains all the parameters to send to the API endpoint
for the public get group contents v2 operation typically these are written to a http.Request
*/
type PublicGetGroupContentsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
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

// WithTimeout adds the timeout to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithTimeout(timeout time.Duration) *PublicGetGroupContentsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithContext(ctx context.Context) *PublicGetGroupContentsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithHTTPClient(client *http.Client) *PublicGetGroupContentsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithGroupID(groupID string) *PublicGetGroupContentsV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithNamespace(namespace string) *PublicGetGroupContentsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithUserID(userID string) *PublicGetGroupContentsV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithLimit(limit *int64) *PublicGetGroupContentsV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) WithOffset(offset *int64) *PublicGetGroupContentsV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get group contents v2 params
func (o *PublicGetGroupContentsV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetGroupContentsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
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
