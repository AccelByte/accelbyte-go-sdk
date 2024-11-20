// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tags

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

// Get the enum in PublicListTagsParams
const (
	PublicListTagsCreatedAtConstant     = "createdAt"
	PublicListTagsCreatedAtAscConstant  = "createdAt:asc"
	PublicListTagsCreatedAtDescConstant = "createdAt:desc"
	PublicListTagsNameConstant          = "name"
	PublicListTagsNameAscConstant       = "name:asc"
	PublicListTagsNameDescConstant      = "name:desc"
)

// NewPublicListTagsParams creates a new PublicListTagsParams object
// with the default values initialized.
func NewPublicListTagsParams() *PublicListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &PublicListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListTagsParamsWithTimeout creates a new PublicListTagsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListTagsParamsWithTimeout(timeout time.Duration) *PublicListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &PublicListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListTagsParamsWithContext creates a new PublicListTagsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListTagsParamsWithContext(ctx context.Context) *PublicListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &PublicListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListTagsParamsWithHTTPClient creates a new PublicListTagsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListTagsParamsWithHTTPClient(client *http.Client) *PublicListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &PublicListTagsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListTagsParams contains all the parameters to send to the API endpoint
for the public list tags operation typically these are written to a http.Request
*/
type PublicListTagsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Name
	  like's query by tag name

	*/
	Name *string
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	  sort by, default is 'name:asc', allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc]

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list tags params
func (o *PublicListTagsParams) WithTimeout(timeout time.Duration) *PublicListTagsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list tags params
func (o *PublicListTagsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list tags params
func (o *PublicListTagsParams) WithContext(ctx context.Context) *PublicListTagsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list tags params
func (o *PublicListTagsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list tags params
func (o *PublicListTagsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list tags params
func (o *PublicListTagsParams) WithHTTPClient(client *http.Client) *PublicListTagsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list tags params
func (o *PublicListTagsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list tags params
func (o *PublicListTagsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListTagsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list tags params
func (o *PublicListTagsParams) WithNamespace(namespace string) *PublicListTagsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list tags params
func (o *PublicListTagsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list tags params
func (o *PublicListTagsParams) WithLimit(limit *int64) *PublicListTagsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list tags params
func (o *PublicListTagsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the public list tags params
func (o *PublicListTagsParams) WithName(name *string) *PublicListTagsParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the public list tags params
func (o *PublicListTagsParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the public list tags params
func (o *PublicListTagsParams) WithOffset(offset *int64) *PublicListTagsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list tags params
func (o *PublicListTagsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list tags params
func (o *PublicListTagsParams) WithSortBy(sortBy *string) *PublicListTagsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list tags params
func (o *PublicListTagsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListTagsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
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
