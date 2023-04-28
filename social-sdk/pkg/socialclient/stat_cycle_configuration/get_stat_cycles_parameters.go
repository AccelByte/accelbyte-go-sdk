// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// Get the enum in GetStatCyclesParams
const (
	GetStatCyclesANNUALLYConstant = "ANNUALLY"
	GetStatCyclesDAILYConstant    = "DAILY"
	GetStatCyclesMONTHLYConstant  = "MONTHLY"
	GetStatCyclesSEASONALConstant = "SEASONAL"
	GetStatCyclesWEEKLYConstant   = "WEEKLY"
)

// Get the enum in GetStatCyclesParams
const (
	GetStatCyclesACTIVEConstant  = "ACTIVE"
	GetStatCyclesINITConstant    = "INIT"
	GetStatCyclesSTOPPEDConstant = "STOPPED"
)

// NewGetStatCyclesParams creates a new GetStatCyclesParams object
// with the default values initialized.
func NewGetStatCyclesParams() *GetStatCyclesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCyclesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatCyclesParamsWithTimeout creates a new GetStatCyclesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatCyclesParamsWithTimeout(timeout time.Duration) *GetStatCyclesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCyclesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetStatCyclesParamsWithContext creates a new GetStatCyclesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatCyclesParamsWithContext(ctx context.Context) *GetStatCyclesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCyclesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetStatCyclesParamsWithHTTPClient creates a new GetStatCyclesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatCyclesParamsWithHTTPClient(client *http.Client) *GetStatCyclesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCyclesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetStatCyclesParams contains all the parameters to send to the API endpoint
for the get stat cycles operation typically these are written to a http.Request
*/
type GetStatCyclesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*CycleType*/
	CycleType *string
	/*Limit*/
	Limit *int32
	/*Name
	  name

	*/
	Name *string
	/*Offset*/
	Offset *int32
	/*SortBy
	  default is unsorted, allow values: [start, start:asc, start:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc],and support sort group, eg: sortBy=start:asc,createdAt:desc.

	*/
	SortBy *string
	/*Status*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get stat cycles params
func (o *GetStatCyclesParams) WithTimeout(timeout time.Duration) *GetStatCyclesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat cycles params
func (o *GetStatCyclesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat cycles params
func (o *GetStatCyclesParams) WithContext(ctx context.Context) *GetStatCyclesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat cycles params
func (o *GetStatCyclesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stat cycles params
func (o *GetStatCyclesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stat cycles params
func (o *GetStatCyclesParams) WithHTTPClient(client *http.Client) *GetStatCyclesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat cycles params
func (o *GetStatCyclesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stat cycles params
func (o *GetStatCyclesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get stat cycles params
func (o *GetStatCyclesParams) WithNamespace(namespace string) *GetStatCyclesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat cycles params
func (o *GetStatCyclesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCycleType adds the cycleType to the get stat cycles params
func (o *GetStatCyclesParams) WithCycleType(cycleType *string) *GetStatCyclesParams {
	o.SetCycleType(cycleType)
	return o
}

// SetCycleType adds the cycleType to the get stat cycles params
func (o *GetStatCyclesParams) SetCycleType(cycleType *string) {
	o.CycleType = cycleType
}

// WithLimit adds the limit to the get stat cycles params
func (o *GetStatCyclesParams) WithLimit(limit *int32) *GetStatCyclesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get stat cycles params
func (o *GetStatCyclesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithName adds the name to the get stat cycles params
func (o *GetStatCyclesParams) WithName(name *string) *GetStatCyclesParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the get stat cycles params
func (o *GetStatCyclesParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the get stat cycles params
func (o *GetStatCyclesParams) WithOffset(offset *int32) *GetStatCyclesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get stat cycles params
func (o *GetStatCyclesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get stat cycles params
func (o *GetStatCyclesParams) WithSortBy(sortBy *string) *GetStatCyclesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get stat cycles params
func (o *GetStatCyclesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the get stat cycles params
func (o *GetStatCyclesParams) WithStatus(status *string) *GetStatCyclesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the get stat cycles params
func (o *GetStatCyclesParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatCyclesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CycleType != nil {

		// query param cycleType
		var qrCycleType string
		if o.CycleType != nil {
			qrCycleType = *o.CycleType
		}
		qCycleType := qrCycleType
		if qCycleType != "" {
			if err := r.SetQueryParam("cycleType", qCycleType); err != nil {
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
