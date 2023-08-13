// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_binary_record

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

// NewListGameBinaryRecordsV1Params creates a new ListGameBinaryRecordsV1Params object
// with the default values initialized.
func NewListGameBinaryRecordsV1Params() *ListGameBinaryRecordsV1Params {
	var ()
	return &ListGameBinaryRecordsV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewListGameBinaryRecordsV1ParamsWithTimeout creates a new ListGameBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListGameBinaryRecordsV1ParamsWithTimeout(timeout time.Duration) *ListGameBinaryRecordsV1Params {
	var ()
	return &ListGameBinaryRecordsV1Params{

		timeout: timeout,
	}
}

// NewListGameBinaryRecordsV1ParamsWithContext creates a new ListGameBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewListGameBinaryRecordsV1ParamsWithContext(ctx context.Context) *ListGameBinaryRecordsV1Params {
	var ()
	return &ListGameBinaryRecordsV1Params{

		Context: ctx,
	}
}

// NewListGameBinaryRecordsV1ParamsWithHTTPClient creates a new ListGameBinaryRecordsV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListGameBinaryRecordsV1ParamsWithHTTPClient(client *http.Client) *ListGameBinaryRecordsV1Params {
	var ()
	return &ListGameBinaryRecordsV1Params{
		HTTPClient: client,
	}
}

/*ListGameBinaryRecordsV1Params contains all the parameters to send to the API endpoint
for the list game binary records v1 operation typically these are written to a http.Request
*/
type ListGameBinaryRecordsV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*Query
	  key

	*/
	Query *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithTimeout(timeout time.Duration) *ListGameBinaryRecordsV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithContext(ctx context.Context) *ListGameBinaryRecordsV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithHTTPClient(client *http.Client) *ListGameBinaryRecordsV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithNamespace(namespace string) *ListGameBinaryRecordsV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithLimit(limit *int64) *ListGameBinaryRecordsV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithOffset(offset *int64) *ListGameBinaryRecordsV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQuery adds the query to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) WithQuery(query *string) *ListGameBinaryRecordsV1Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the list game binary records v1 params
func (o *ListGameBinaryRecordsV1Params) SetQuery(query *string) {
	o.Query = query
}

// WriteToRequest writes these params to a swagger request
func (o *ListGameBinaryRecordsV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
