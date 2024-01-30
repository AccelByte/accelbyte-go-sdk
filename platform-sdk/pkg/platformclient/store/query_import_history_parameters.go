// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewQueryImportHistoryParams creates a new QueryImportHistoryParams object
// with the default values initialized.
func NewQueryImportHistoryParams() *QueryImportHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("createdAt:desc")
	)
	return &QueryImportHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryImportHistoryParamsWithTimeout creates a new QueryImportHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryImportHistoryParamsWithTimeout(timeout time.Duration) *QueryImportHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("createdAt:desc")
	)
	return &QueryImportHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewQueryImportHistoryParamsWithContext creates a new QueryImportHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryImportHistoryParamsWithContext(ctx context.Context) *QueryImportHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("createdAt:desc")
	)
	return &QueryImportHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewQueryImportHistoryParamsWithHTTPClient creates a new QueryImportHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryImportHistoryParamsWithHTTPClient(client *http.Client) *QueryImportHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("createdAt:desc")
	)
	return &QueryImportHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*QueryImportHistoryParams contains all the parameters to send to the API endpoint
for the query import history operation typically these are written to a http.Request
*/
type QueryImportHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string
	/*End*/
	End *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*SortBy
	  default createdAt:desc. Allowed values: [createdAt:asc, createdAt:desc]

	*/
	SortBy *string
	/*Start*/
	Start *string
	/*Success*/
	Success *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query import history params
func (o *QueryImportHistoryParams) WithTimeout(timeout time.Duration) *QueryImportHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query import history params
func (o *QueryImportHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query import history params
func (o *QueryImportHistoryParams) WithContext(ctx context.Context) *QueryImportHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query import history params
func (o *QueryImportHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query import history params
func (o *QueryImportHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query import history params
func (o *QueryImportHistoryParams) WithHTTPClient(client *http.Client) *QueryImportHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query import history params
func (o *QueryImportHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query import history params
func (o *QueryImportHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryImportHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query import history params
func (o *QueryImportHistoryParams) WithNamespace(namespace string) *QueryImportHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query import history params
func (o *QueryImportHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the query import history params
func (o *QueryImportHistoryParams) WithStoreID(storeID string) *QueryImportHistoryParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query import history params
func (o *QueryImportHistoryParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WithEnd adds the end to the query import history params
func (o *QueryImportHistoryParams) WithEnd(end *string) *QueryImportHistoryParams {
	o.SetEnd(end)
	return o
}

// SetEnd adds the end to the query import history params
func (o *QueryImportHistoryParams) SetEnd(end *string) {
	o.End = end
}

// WithLimit adds the limit to the query import history params
func (o *QueryImportHistoryParams) WithLimit(limit *int32) *QueryImportHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query import history params
func (o *QueryImportHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query import history params
func (o *QueryImportHistoryParams) WithOffset(offset *int32) *QueryImportHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query import history params
func (o *QueryImportHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the query import history params
func (o *QueryImportHistoryParams) WithSortBy(sortBy *string) *QueryImportHistoryParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query import history params
func (o *QueryImportHistoryParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStart adds the start to the query import history params
func (o *QueryImportHistoryParams) WithStart(start *string) *QueryImportHistoryParams {
	o.SetStart(start)
	return o
}

// SetStart adds the start to the query import history params
func (o *QueryImportHistoryParams) SetStart(start *string) {
	o.Start = start
}

// WithSuccess adds the success to the query import history params
func (o *QueryImportHistoryParams) WithSuccess(success *bool) *QueryImportHistoryParams {
	o.SetSuccess(success)
	return o
}

// SetSuccess adds the success to the query import history params
func (o *QueryImportHistoryParams) SetSuccess(success *bool) {
	o.Success = success
}

// WriteToRequest writes these params to a swagger request
func (o *QueryImportHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
		return err
	}

	if o.End != nil {

		// query param end
		var qrEnd string
		if o.End != nil {
			qrEnd = *o.End
		}
		qEnd := qrEnd
		if qEnd != "" {
			if err := r.SetQueryParam("end", qEnd); err != nil {
				return err
			}
		}

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

	if o.Start != nil {

		// query param start
		var qrStart string
		if o.Start != nil {
			qrStart = *o.Start
		}
		qStart := qrStart
		if qStart != "" {
			if err := r.SetQueryParam("start", qStart); err != nil {
				return err
			}
		}

	}

	if o.Success != nil {

		// query param success
		var qrSuccess bool
		if o.Success != nil {
			qrSuccess = *o.Success
		}
		qSuccess := swag.FormatBool(qrSuccess)
		if qSuccess != "" {
			if err := r.SetQueryParam("success", qSuccess); err != nil {
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
