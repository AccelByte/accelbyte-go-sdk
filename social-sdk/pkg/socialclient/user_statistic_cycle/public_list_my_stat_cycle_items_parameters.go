// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic_cycle

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

// NewPublicListMyStatCycleItemsParams creates a new PublicListMyStatCycleItemsParams object
// with the default values initialized.
func NewPublicListMyStatCycleItemsParams() *PublicListMyStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListMyStatCycleItemsParamsWithTimeout creates a new PublicListMyStatCycleItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListMyStatCycleItemsParamsWithTimeout(timeout time.Duration) *PublicListMyStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicListMyStatCycleItemsParamsWithContext creates a new PublicListMyStatCycleItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListMyStatCycleItemsParamsWithContext(ctx context.Context) *PublicListMyStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicListMyStatCycleItemsParamsWithHTTPClient creates a new PublicListMyStatCycleItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListMyStatCycleItemsParamsWithHTTPClient(client *http.Client) *PublicListMyStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicListMyStatCycleItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicListMyStatCycleItemsParams contains all the parameters to send to the API endpoint
for the public list my stat cycle items operation typically these are written to a http.Request
*/
type PublicListMyStatCycleItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  cycle id

	*/
	CycleID string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithTimeout(timeout time.Duration) *PublicListMyStatCycleItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithContext(ctx context.Context) *PublicListMyStatCycleItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithHTTPClient(client *http.Client) *PublicListMyStatCycleItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCycleID adds the cycleID to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithCycleID(cycleID string) *PublicListMyStatCycleItemsParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithNamespace(namespace string) *PublicListMyStatCycleItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithLimit(limit *int32) *PublicListMyStatCycleItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithOffset(offset *int32) *PublicListMyStatCycleItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithSortBy(sortBy *string) *PublicListMyStatCycleItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatCodes adds the statCodes to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) WithStatCodes(statCodes []string) *PublicListMyStatCycleItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the public list my stat cycle items params
func (o *PublicListMyStatCycleItemsParams) SetStatCodes(statCodes []string) {
	o.StatCodes = statCodes
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListMyStatCycleItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
		return err
	}

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
