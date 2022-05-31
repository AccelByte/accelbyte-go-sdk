// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package achievements

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewPublicListUserAchievementsParams creates a new PublicListUserAchievementsParams object
// with the default values initialized.
func NewPublicListUserAchievementsParams() *PublicListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(false)
	)
	return &PublicListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListUserAchievementsParamsWithTimeout creates a new PublicListUserAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListUserAchievementsParamsWithTimeout(timeout time.Duration) *PublicListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(false)
	)
	return &PublicListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		timeout: timeout,
	}
}

// NewPublicListUserAchievementsParamsWithContext creates a new PublicListUserAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListUserAchievementsParamsWithContext(ctx context.Context) *PublicListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(false)
	)
	return &PublicListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		Context: ctx,
	}
}

// NewPublicListUserAchievementsParamsWithHTTPClient creates a new PublicListUserAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListUserAchievementsParamsWithHTTPClient(client *http.Client) *PublicListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(false)
	)
	return &PublicListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,
		HTTPClient:     client,
	}
}

/*PublicListUserAchievementsParams contains all the parameters to send to the API endpoint
for the public list user achievements operation typically these are written to a http.Request
*/
type PublicListUserAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Offset
	  offset

	*/
	Offset *int64
	/*PreferUnlocked
	  prefer to query achieved

	*/
	PreferUnlocked *bool
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithTimeout(timeout time.Duration) *PublicListUserAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithContext(ctx context.Context) *PublicListUserAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithHTTPClient(client *http.Client) *PublicListUserAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLimit adds the limit to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithLimit(limit *int64) *PublicListUserAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithNamespace(namespace string) *PublicListUserAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithOffset(offset *int64) *PublicListUserAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPreferUnlocked adds the preferUnlocked to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithPreferUnlocked(preferUnlocked *bool) *PublicListUserAchievementsParams {
	o.SetPreferUnlocked(preferUnlocked)
	return o
}

// SetPreferUnlocked adds the preferUnlocked to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetPreferUnlocked(preferUnlocked *bool) {
	o.PreferUnlocked = preferUnlocked
}

// WithUserID adds the userID to the public list user achievements params
func (o *PublicListUserAchievementsParams) WithUserID(userID string) *PublicListUserAchievementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list user achievements params
func (o *PublicListUserAchievementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListUserAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.PreferUnlocked != nil {

		// query param preferUnlocked
		var qrPreferUnlocked bool
		if o.PreferUnlocked != nil {
			qrPreferUnlocked = *o.PreferUnlocked
		}
		qPreferUnlocked := swag.FormatBool(qrPreferUnlocked)
		if qPreferUnlocked != "" {
			if err := r.SetQueryParam("preferUnlocked", qPreferUnlocked); err != nil {
				return err
			}
		}

	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
