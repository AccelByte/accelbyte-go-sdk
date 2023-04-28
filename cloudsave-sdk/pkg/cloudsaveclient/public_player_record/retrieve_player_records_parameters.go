// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

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

// NewRetrievePlayerRecordsParams creates a new RetrievePlayerRecordsParams object
// with the default values initialized.
func NewRetrievePlayerRecordsParams() *RetrievePlayerRecordsParams {
	var ()
	return &RetrievePlayerRecordsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePlayerRecordsParamsWithTimeout creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePlayerRecordsParamsWithTimeout(timeout time.Duration) *RetrievePlayerRecordsParams {
	var ()
	return &RetrievePlayerRecordsParams{

		timeout: timeout,
	}
}

// NewRetrievePlayerRecordsParamsWithContext creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePlayerRecordsParamsWithContext(ctx context.Context) *RetrievePlayerRecordsParams {
	var ()
	return &RetrievePlayerRecordsParams{

		Context: ctx,
	}
}

// NewRetrievePlayerRecordsParamsWithHTTPClient creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePlayerRecordsParamsWithHTTPClient(client *http.Client) *RetrievePlayerRecordsParams {
	var ()
	return &RetrievePlayerRecordsParams{
		HTTPClient: client,
	}
}

/*RetrievePlayerRecordsParams contains all the parameters to send to the API endpoint
for the retrieve player records operation typically these are written to a http.Request
*/
type RetrievePlayerRecordsParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithTimeout(timeout time.Duration) *RetrievePlayerRecordsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithContext(ctx context.Context) *RetrievePlayerRecordsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithHTTPClient(client *http.Client) *RetrievePlayerRecordsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithNamespace(namespace string) *RetrievePlayerRecordsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithLimit(limit *int64) *RetrievePlayerRecordsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithOffset(offset *int64) *RetrievePlayerRecordsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePlayerRecordsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
