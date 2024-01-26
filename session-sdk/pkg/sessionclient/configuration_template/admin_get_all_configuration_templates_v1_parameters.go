// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

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

// NewAdminGetAllConfigurationTemplatesV1Params creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized.
func NewAdminGetAllConfigurationTemplatesV1Params() *AdminGetAllConfigurationTemplatesV1Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllConfigurationTemplatesV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithTimeout creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithTimeout(timeout time.Duration) *AdminGetAllConfigurationTemplatesV1Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllConfigurationTemplatesV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithContext creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithContext(ctx context.Context) *AdminGetAllConfigurationTemplatesV1Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllConfigurationTemplatesV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithHTTPClient creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithHTTPClient(client *http.Client) *AdminGetAllConfigurationTemplatesV1Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllConfigurationTemplatesV1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetAllConfigurationTemplatesV1Params contains all the parameters to send to the API endpoint
for the admin get all configuration templates v1 operation typically these are written to a http.Request
*/
type AdminGetAllConfigurationTemplatesV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Name
	  Configuration name

	*/
	Name *string
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: createdAt (default), updatedAt

	*/
	OrderBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithTimeout(timeout time.Duration) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithContext(ctx context.Context) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithHTTPClient(client *http.Client) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetAllConfigurationTemplatesV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithNamespace(namespace string) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithLimit(limit *int64) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithName(name *string) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithOffset(offset *int64) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithOrder(order *string) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithOrderBy(orderBy *string) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllConfigurationTemplatesV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
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
