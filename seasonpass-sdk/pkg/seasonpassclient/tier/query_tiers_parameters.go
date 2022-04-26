// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package tier

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewQueryTiersParams creates a new QueryTiersParams object
// with the default values initialized.
func NewQueryTiersParams() *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryTiersParamsWithTimeout creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryTiersParamsWithTimeout(timeout time.Duration) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryTiersParamsWithContext creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryTiersParamsWithContext(ctx context.Context) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryTiersParamsWithHTTPClient creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryTiersParamsWithHTTPClient(client *http.Client) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryTiersParams contains all the parameters to send to the API endpoint
for the query tiers operation typically these are written to a http.Request
*/
type QueryTiersParams struct {

	/*Limit
	  limit

	*/
	Limit *int32
	/*Namespace*/
	Namespace string
	/*Offset
	  offset

	*/
	Offset *int32
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query tiers params
func (o *QueryTiersParams) WithTimeout(timeout time.Duration) *QueryTiersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query tiers params
func (o *QueryTiersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query tiers params
func (o *QueryTiersParams) WithContext(ctx context.Context) *QueryTiersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query tiers params
func (o *QueryTiersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query tiers params
func (o *QueryTiersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query tiers params
func (o *QueryTiersParams) WithHTTPClient(client *http.Client) *QueryTiersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query tiers params
func (o *QueryTiersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLimit adds the limit to the query tiers params
func (o *QueryTiersParams) WithLimit(limit *int32) *QueryTiersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query tiers params
func (o *QueryTiersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the query tiers params
func (o *QueryTiersParams) WithNamespace(namespace string) *QueryTiersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query tiers params
func (o *QueryTiersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the query tiers params
func (o *QueryTiersParams) WithOffset(offset *int32) *QueryTiersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query tiers params
func (o *QueryTiersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSeasonID adds the seasonID to the query tiers params
func (o *QueryTiersParams) WithSeasonID(seasonID string) *QueryTiersParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query tiers params
func (o *QueryTiersParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryTiersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
