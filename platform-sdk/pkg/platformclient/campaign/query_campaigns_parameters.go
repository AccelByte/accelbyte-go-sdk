// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// NewQueryCampaignsParams creates a new QueryCampaignsParams object
// with the default values initialized.
func NewQueryCampaignsParams() *QueryCampaignsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryCampaignsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryCampaignsParamsWithTimeout creates a new QueryCampaignsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryCampaignsParamsWithTimeout(timeout time.Duration) *QueryCampaignsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryCampaignsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryCampaignsParamsWithContext creates a new QueryCampaignsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryCampaignsParamsWithContext(ctx context.Context) *QueryCampaignsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryCampaignsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryCampaignsParamsWithHTTPClient creates a new QueryCampaignsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryCampaignsParamsWithHTTPClient(client *http.Client) *QueryCampaignsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryCampaignsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryCampaignsParams contains all the parameters to send to the API endpoint
for the query campaigns operation typically these are written to a http.Request
*/
type QueryCampaignsParams struct {

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

// WithTimeout adds the timeout to the query campaigns params
func (o *QueryCampaignsParams) WithTimeout(timeout time.Duration) *QueryCampaignsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query campaigns params
func (o *QueryCampaignsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query campaigns params
func (o *QueryCampaignsParams) WithContext(ctx context.Context) *QueryCampaignsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query campaigns params
func (o *QueryCampaignsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query campaigns params
func (o *QueryCampaignsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query campaigns params
func (o *QueryCampaignsParams) WithHTTPClient(client *http.Client) *QueryCampaignsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query campaigns params
func (o *QueryCampaignsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query campaigns params
func (o *QueryCampaignsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryCampaignsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query campaigns params
func (o *QueryCampaignsParams) WithNamespace(namespace string) *QueryCampaignsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query campaigns params
func (o *QueryCampaignsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query campaigns params
func (o *QueryCampaignsParams) WithLimit(limit *int32) *QueryCampaignsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query campaigns params
func (o *QueryCampaignsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithName adds the name to the query campaigns params
func (o *QueryCampaignsParams) WithName(name *string) *QueryCampaignsParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the query campaigns params
func (o *QueryCampaignsParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the query campaigns params
func (o *QueryCampaignsParams) WithOffset(offset *int32) *QueryCampaignsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query campaigns params
func (o *QueryCampaignsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithTag adds the tag to the query campaigns params
func (o *QueryCampaignsParams) WithTag(tag *string) *QueryCampaignsParams {
	o.SetTag(tag)
	return o
}

// SetTag adds the tag to the query campaigns params
func (o *QueryCampaignsParams) SetTag(tag *string) {
	o.Tag = tag
}

// WriteToRequest writes these params to a swagger request
func (o *QueryCampaignsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
