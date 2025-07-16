// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_item_types

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

// Deprecated: 2025-07-16 - Use PublicListItemTypesSortBy<EnumValue>Constant instead.
// Get the enum in PublicListItemTypesParams
const (
	PublicListItemTypesCreatedAtConstant     = "createdAt"
	PublicListItemTypesCreatedAtAscConstant  = "createdAt:asc"
	PublicListItemTypesCreatedAtDescConstant = "createdAt:desc"
	PublicListItemTypesNameConstant          = "name"
	PublicListItemTypesNameAscConstant       = "name:asc"
	PublicListItemTypesNameDescConstant      = "name:desc"
)

// Get the enum in PublicListItemTypesParams
const (
	PublicListItemTypesSortByCreatedAtConstant     = "createdAt"
	PublicListItemTypesSortByCreatedAtAscConstant  = "createdAt:asc"
	PublicListItemTypesSortByCreatedAtDescConstant = "createdAt:desc"
	PublicListItemTypesSortByNameConstant          = "name"
	PublicListItemTypesSortByNameAscConstant       = "name:asc"
	PublicListItemTypesSortByNameDescConstant      = "name:desc"
)

// NewPublicListItemTypesParams creates a new PublicListItemTypesParams object
// with the default values initialized.
func NewPublicListItemTypesParams() *PublicListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListItemTypesParamsWithTimeout creates a new PublicListItemTypesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListItemTypesParamsWithTimeout(timeout time.Duration) *PublicListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListItemTypesParamsWithContext creates a new PublicListItemTypesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListItemTypesParamsWithContext(ctx context.Context) *PublicListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListItemTypesParamsWithHTTPClient creates a new PublicListItemTypesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListItemTypesParamsWithHTTPClient(client *http.Client) *PublicListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemTypesParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListItemTypesParams contains all the parameters to send to the API endpoint
for the public list item types operation typically these are written to a http.Request
*/
type PublicListItemTypesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit
	  default 25

	*/
	Limit *int64
	/*Offset*/
	Offset *int64
	/*SortBy
	  Only support one level of sortBy; default createdAt

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list item types params
func (o *PublicListItemTypesParams) WithTimeout(timeout time.Duration) *PublicListItemTypesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list item types params
func (o *PublicListItemTypesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list item types params
func (o *PublicListItemTypesParams) WithContext(ctx context.Context) *PublicListItemTypesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list item types params
func (o *PublicListItemTypesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list item types params
func (o *PublicListItemTypesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list item types params
func (o *PublicListItemTypesParams) WithHTTPClient(client *http.Client) *PublicListItemTypesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list item types params
func (o *PublicListItemTypesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list item types params
func (o *PublicListItemTypesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListItemTypesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list item types params
func (o *PublicListItemTypesParams) WithNamespace(namespace string) *PublicListItemTypesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list item types params
func (o *PublicListItemTypesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list item types params
func (o *PublicListItemTypesParams) WithLimit(limit *int64) *PublicListItemTypesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list item types params
func (o *PublicListItemTypesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list item types params
func (o *PublicListItemTypesParams) WithOffset(offset *int64) *PublicListItemTypesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list item types params
func (o *PublicListItemTypesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list item types params
func (o *PublicListItemTypesParams) WithSortBy(sortBy *string) *PublicListItemTypesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list item types params
func (o *PublicListItemTypesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListItemTypesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
