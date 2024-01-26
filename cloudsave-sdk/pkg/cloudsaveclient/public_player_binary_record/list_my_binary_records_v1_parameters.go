// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// NewListMyBinaryRecordsV1Params creates a new ListMyBinaryRecordsV1Params object
// with the default values initialized.
func NewListMyBinaryRecordsV1Params() *ListMyBinaryRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &ListMyBinaryRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListMyBinaryRecordsV1ParamsWithTimeout creates a new ListMyBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListMyBinaryRecordsV1ParamsWithTimeout(timeout time.Duration) *ListMyBinaryRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &ListMyBinaryRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewListMyBinaryRecordsV1ParamsWithContext creates a new ListMyBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewListMyBinaryRecordsV1ParamsWithContext(ctx context.Context) *ListMyBinaryRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &ListMyBinaryRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewListMyBinaryRecordsV1ParamsWithHTTPClient creates a new ListMyBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListMyBinaryRecordsV1ParamsWithHTTPClient(client *http.Client) *ListMyBinaryRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &ListMyBinaryRecordsV1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*ListMyBinaryRecordsV1Params contains all the parameters to send to the API endpoint
for the list my binary records v1 operation typically these are written to a http.Request
*/
type ListMyBinaryRecordsV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  the number of data retrieved in a page, default 25

	*/
	Limit *int64
	/*Offset
	  the number of offset, default 0

	*/
	Offset *int64
	/*Query
	  query, search player records by key

	*/
	Query *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithTimeout(timeout time.Duration) *ListMyBinaryRecordsV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithContext(ctx context.Context) *ListMyBinaryRecordsV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithHTTPClient(client *http.Client) *ListMyBinaryRecordsV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListMyBinaryRecordsV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithNamespace(namespace string) *ListMyBinaryRecordsV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithLimit(limit *int64) *ListMyBinaryRecordsV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithOffset(offset *int64) *ListMyBinaryRecordsV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQuery adds the query to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) WithQuery(query *string) *ListMyBinaryRecordsV1Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the list my binary records v1 params
func (o *ListMyBinaryRecordsV1Params) SetQuery(query *string) {
	o.Query = query
}

// WriteToRequest writes these params to a swagger request
func (o *ListMyBinaryRecordsV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Query != nil {

		// query param query
		var qrQuery string
		if o.Query != nil {
			qrQuery = *o.Query
		}
		qQuery := qrQuery
		if qQuery != "" {
			if err := r.SetQueryParam("query", qQuery); err != nil {
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
