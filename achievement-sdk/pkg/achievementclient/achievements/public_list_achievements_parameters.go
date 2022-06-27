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

// Get the enum in PublicListAchievementsParams
const (
	PublicListAchievementsListOrderConstant     = "listOrder"
	PublicListAchievementsListOrderAscConstant  = "listOrder:asc"
	PublicListAchievementsListOrderDescConstant = "listOrder:desc"
	PublicListAchievementsCreatedAtConstant     = "createdAt"
	PublicListAchievementsCreatedAtAscConstant  = "createdAt:asc"
	PublicListAchievementsCreatedAtDescConstant = "createdAt:desc"
	PublicListAchievementsUpdatedAtConstant     = "updatedAt"
	PublicListAchievementsUpdatedAtAscConstant  = "updatedAt:asc"
	PublicListAchievementsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewPublicListAchievementsParams creates a new PublicListAchievementsParams object
// with the default values initialized.
func NewPublicListAchievementsParams() *PublicListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &PublicListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListAchievementsParamsWithTimeout creates a new PublicListAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListAchievementsParamsWithTimeout(timeout time.Duration) *PublicListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &PublicListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListAchievementsParamsWithContext creates a new PublicListAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListAchievementsParamsWithContext(ctx context.Context) *PublicListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &PublicListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListAchievementsParamsWithHTTPClient creates a new PublicListAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListAchievementsParamsWithHTTPClient(client *http.Client) *PublicListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &PublicListAchievementsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListAchievementsParams contains all the parameters to send to the API endpoint
for the public list achievements operation typically these are written to a http.Request
*/
type PublicListAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Language
	  language, if the selected language not exist in achievement,it use default language

	*/
	Language string
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
	/*SortBy
	  sort by, default is 'listOrder:asc', allow values: [listOrder, listOrder:asc, listOrder:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc]

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list achievements params
func (o *PublicListAchievementsParams) WithTimeout(timeout time.Duration) *PublicListAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list achievements params
func (o *PublicListAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list achievements params
func (o *PublicListAchievementsParams) WithContext(ctx context.Context) *PublicListAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list achievements params
func (o *PublicListAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list achievements params
func (o *PublicListAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list achievements params
func (o *PublicListAchievementsParams) WithHTTPClient(client *http.Client) *PublicListAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list achievements params
func (o *PublicListAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list achievements params
func (o *PublicListAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLanguage adds the language to the public list achievements params
func (o *PublicListAchievementsParams) WithLanguage(language string) *PublicListAchievementsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public list achievements params
func (o *PublicListAchievementsParams) SetLanguage(language string) {
	o.Language = language
}

// WithLimit adds the limit to the public list achievements params
func (o *PublicListAchievementsParams) WithLimit(limit *int64) *PublicListAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list achievements params
func (o *PublicListAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the public list achievements params
func (o *PublicListAchievementsParams) WithNamespace(namespace string) *PublicListAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list achievements params
func (o *PublicListAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the public list achievements params
func (o *PublicListAchievementsParams) WithOffset(offset *int64) *PublicListAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list achievements params
func (o *PublicListAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list achievements params
func (o *PublicListAchievementsParams) WithSortBy(sortBy *string) *PublicListAchievementsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list achievements params
func (o *PublicListAchievementsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param language
	qrLanguage := o.Language
	qLanguage := qrLanguage
	if qLanguage != "" {
		if err := r.SetQueryParam("language", qLanguage); err != nil {
			return err
		}
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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
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
