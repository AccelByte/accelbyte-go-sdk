// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

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

// Get the enum in ListImagesClientParams
const (
	ListImagesClientCreatedAtConstant = "createdAt"
	ListImagesClientUpdatedAtConstant = "updatedAt"
	ListImagesClientVersionConstant   = "version"
)

// Get the enum in ListImagesClientParams
const (
	ListImagesClientAscConstant  = "asc"
	ListImagesClientDescConstant = "desc"
)

// NewListImagesClientParams creates a new ListImagesClientParams object
// with the default values initialized.
func NewListImagesClientParams() *ListImagesClientParams {
	var (
		countDefault         = int64(50)
		offsetDefault        = int64(0)
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesClientParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListImagesClientParamsWithTimeout creates a new ListImagesClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListImagesClientParamsWithTimeout(timeout time.Duration) *ListImagesClientParams {
	var (
		countDefault         = int64(50)
		offsetDefault        = int64(0)
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesClientParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: timeout,
	}
}

// NewListImagesClientParamsWithContext creates a new ListImagesClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewListImagesClientParamsWithContext(ctx context.Context) *ListImagesClientParams {
	var (
		countDefault         = int64(50)
		offsetDefault        = int64(0)
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesClientParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		Context: ctx,
	}
}

// NewListImagesClientParamsWithHTTPClient creates a new ListImagesClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListImagesClientParamsWithHTTPClient(client *http.Client) *ListImagesClientParams {
	var (
		countDefault         = int64(50)
		offsetDefault        = int64(0)
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesClientParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,
		HTTPClient:    client,
	}
}

/*ListImagesClientParams contains all the parameters to send to the API endpoint
for the list images client operation typically these are written to a http.Request
*/
type ListImagesClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  how many items to return

	*/
	Count *int64
	/*Offset
	  offset from list to query from

	*/
	Offset *int64
	/*Q
	  image name or image version

	*/
	Q *string
	/*SortBy
	  sort by a specific field

	*/
	SortBy *string
	/*SortDirection
	  sort direction

	*/
	SortDirection *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list images client params
func (o *ListImagesClientParams) WithTimeout(timeout time.Duration) *ListImagesClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list images client params
func (o *ListImagesClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list images client params
func (o *ListImagesClientParams) WithContext(ctx context.Context) *ListImagesClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list images client params
func (o *ListImagesClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list images client params
func (o *ListImagesClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list images client params
func (o *ListImagesClientParams) WithHTTPClient(client *http.Client) *ListImagesClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list images client params
func (o *ListImagesClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list images client params
func (o *ListImagesClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListImagesClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list images client params
func (o *ListImagesClientParams) WithNamespace(namespace string) *ListImagesClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list images client params
func (o *ListImagesClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the list images client params
func (o *ListImagesClientParams) WithCount(count *int64) *ListImagesClientParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the list images client params
func (o *ListImagesClientParams) SetCount(count *int64) {
	o.Count = count
}

// WithOffset adds the offset to the list images client params
func (o *ListImagesClientParams) WithOffset(offset *int64) *ListImagesClientParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list images client params
func (o *ListImagesClientParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQ adds the q to the list images client params
func (o *ListImagesClientParams) WithQ(q *string) *ListImagesClientParams {
	o.SetQ(q)
	return o
}

// SetQ adds the q to the list images client params
func (o *ListImagesClientParams) SetQ(q *string) {
	o.Q = q
}

// WithSortBy adds the sortBy to the list images client params
func (o *ListImagesClientParams) WithSortBy(sortBy *string) *ListImagesClientParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list images client params
func (o *ListImagesClientParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSortDirection adds the sortDirection to the list images client params
func (o *ListImagesClientParams) WithSortDirection(sortDirection *string) *ListImagesClientParams {
	o.SetSortDirection(sortDirection)
	return o
}

// SetSortDirection adds the sortDirection to the list images client params
func (o *ListImagesClientParams) SetSortDirection(sortDirection *string) {
	o.SortDirection = sortDirection
}

// WriteToRequest writes these params to a swagger request
func (o *ListImagesClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
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

	if o.Q != nil {

		// query param q
		var qrQ string
		if o.Q != nil {
			qrQ = *o.Q
		}
		qQ := qrQ
		if qQ != "" {
			if err := r.SetQueryParam("q", qQ); err != nil {
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

	if o.SortDirection != nil {

		// query param sortDirection
		var qrSortDirection string
		if o.SortDirection != nil {
			qrSortDirection = *o.SortDirection
		}
		qSortDirection := qrSortDirection
		if qSortDirection != "" {
			if err := r.SetQueryParam("sortDirection", qSortDirection); err != nil {
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
