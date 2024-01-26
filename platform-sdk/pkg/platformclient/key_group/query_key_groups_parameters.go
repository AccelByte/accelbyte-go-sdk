// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package key_group

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

// NewQueryKeyGroupsParams creates a new QueryKeyGroupsParams object
// with the default values initialized.
func NewQueryKeyGroupsParams() *QueryKeyGroupsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryKeyGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryKeyGroupsParamsWithTimeout creates a new QueryKeyGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryKeyGroupsParamsWithTimeout(timeout time.Duration) *QueryKeyGroupsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryKeyGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryKeyGroupsParamsWithContext creates a new QueryKeyGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryKeyGroupsParamsWithContext(ctx context.Context) *QueryKeyGroupsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryKeyGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryKeyGroupsParamsWithHTTPClient creates a new QueryKeyGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryKeyGroupsParamsWithHTTPClient(client *http.Client) *QueryKeyGroupsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryKeyGroupsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryKeyGroupsParams contains all the parameters to send to the API endpoint
for the query key groups operation typically these are written to a http.Request
*/
type QueryKeyGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit*/
	Limit *int32
	/*Name*/
	Name *string
	/*Offset*/
	Offset *int32
	/*Tag*/
	Tag *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query key groups params
func (o *QueryKeyGroupsParams) WithTimeout(timeout time.Duration) *QueryKeyGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query key groups params
func (o *QueryKeyGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query key groups params
func (o *QueryKeyGroupsParams) WithContext(ctx context.Context) *QueryKeyGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query key groups params
func (o *QueryKeyGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query key groups params
func (o *QueryKeyGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query key groups params
func (o *QueryKeyGroupsParams) WithHTTPClient(client *http.Client) *QueryKeyGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query key groups params
func (o *QueryKeyGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query key groups params
func (o *QueryKeyGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryKeyGroupsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query key groups params
func (o *QueryKeyGroupsParams) WithNamespace(namespace string) *QueryKeyGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query key groups params
func (o *QueryKeyGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query key groups params
func (o *QueryKeyGroupsParams) WithLimit(limit *int32) *QueryKeyGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query key groups params
func (o *QueryKeyGroupsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithName adds the name to the query key groups params
func (o *QueryKeyGroupsParams) WithName(name *string) *QueryKeyGroupsParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the query key groups params
func (o *QueryKeyGroupsParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the query key groups params
func (o *QueryKeyGroupsParams) WithOffset(offset *int32) *QueryKeyGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query key groups params
func (o *QueryKeyGroupsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithTag adds the tag to the query key groups params
func (o *QueryKeyGroupsParams) WithTag(tag *string) *QueryKeyGroupsParams {
	o.SetTag(tag)
	return o
}

// SetTag adds the tag to the query key groups params
func (o *QueryKeyGroupsParams) SetTag(tag *string) {
	o.Tag = tag
}

// WriteToRequest writes these params to a swagger request
func (o *QueryKeyGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Tag != nil {

		// query param tag
		var qrTag string
		if o.Tag != nil {
			qrTag = *o.Tag
		}
		qTag := qrTag
		if qTag != "" {
			if err := r.SetQueryParam("tag", qTag); err != nil {
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
