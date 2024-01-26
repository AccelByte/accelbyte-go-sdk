// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewPublicListMyStatItemsParams creates a new PublicListMyStatItemsParams object
// with the default values initialized.
func NewPublicListMyStatItemsParams() *PublicListMyStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListMyStatItemsParamsWithTimeout creates a new PublicListMyStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListMyStatItemsParamsWithTimeout(timeout time.Duration) *PublicListMyStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicListMyStatItemsParamsWithContext creates a new PublicListMyStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListMyStatItemsParamsWithContext(ctx context.Context) *PublicListMyStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicListMyStatItemsParamsWithHTTPClient creates a new PublicListMyStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListMyStatItemsParamsWithHTTPClient(client *http.Client) *PublicListMyStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicListMyStatItemsParams contains all the parameters to send to the API endpoint
for the public list my stat items operation typically these are written to a http.Request
*/
type PublicListMyStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*SortBy
	  default is unsorted, allow values: [statCode, statCode:asc, statCode:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc],and support sort group, eg: sortBy=statCode:asc,createdAt:desc.

	*/
	SortBy *string
	/*StatCodes
	  stat codes

	*/
	StatCodes []string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithTimeout(timeout time.Duration) *PublicListMyStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithContext(ctx context.Context) *PublicListMyStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithHTTPClient(client *http.Client) *PublicListMyStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListMyStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithNamespace(namespace string) *PublicListMyStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithLimit(limit *int32) *PublicListMyStatItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithOffset(offset *int32) *PublicListMyStatItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithSortBy(sortBy *string) *PublicListMyStatItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatCodes adds the statCodes to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithStatCodes(statCodes []string) *PublicListMyStatItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetStatCodes(statCodes []string) {
	o.StatCodes = statCodes
}

// WithTags adds the tags to the public list my stat items params
func (o *PublicListMyStatItemsParams) WithTags(tags []string) *PublicListMyStatItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public list my stat items params
func (o *PublicListMyStatItemsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListMyStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
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

	valuesStatCodes := o.StatCodes

	joinedStatCodes := swag.JoinByFormat(valuesStatCodes, "multi")
	// query array param statCodes
	if err := r.SetQueryParam("statCodes", joinedStatCodes...); err != nil {
		return err
	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
		return err
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
