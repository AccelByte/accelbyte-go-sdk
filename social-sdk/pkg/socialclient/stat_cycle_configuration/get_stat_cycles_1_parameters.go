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

// Deprecated: 2025-07-16 - Use GetStatCycles1CycleType<EnumValue>Constant instead.
// Get the enum in GetStatCycles1Params
const (
	GetStatCycles1ANNUALLYConstant = "ANNUALLY"
	GetStatCycles1DAILYConstant    = "DAILY"
	GetStatCycles1MONTHLYConstant  = "MONTHLY"
	GetStatCycles1SEASONALConstant = "SEASONAL"
	GetStatCycles1WEEKLYConstant   = "WEEKLY"
)

// Deprecated: 2025-07-16 - Use GetStatCycles1Status<EnumValue>Constant instead.
// Get the enum in GetStatCycles1Params
const (
	GetStatCycles1ACTIVEConstant  = "ACTIVE"
	GetStatCycles1INITConstant    = "INIT"
	GetStatCycles1STOPPEDConstant = "STOPPED"
)

// Get the enum in GetStatCycles1Params
const (
	GetStatCycles1CycleTypeANNUALLYConstant = "ANNUALLY"
	GetStatCycles1CycleTypeDAILYConstant    = "DAILY"
	GetStatCycles1CycleTypeMONTHLYConstant  = "MONTHLY"
	GetStatCycles1CycleTypeSEASONALConstant = "SEASONAL"
	GetStatCycles1CycleTypeWEEKLYConstant   = "WEEKLY"
)

// Get the enum in GetStatCycles1Params
const (
	GetStatCycles1StatusACTIVEConstant  = "ACTIVE"
	GetStatCycles1StatusINITConstant    = "INIT"
	GetStatCycles1StatusSTOPPEDConstant = "STOPPED"
)

// NewGetStatCycles1Params creates a new GetStatCycles1Params object
// with the default values initialized.
func NewGetStatCycles1Params() *GetStatCycles1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCycles1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatCycles1ParamsWithTimeout creates a new GetStatCycles1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatCycles1ParamsWithTimeout(timeout time.Duration) *GetStatCycles1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCycles1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetStatCycles1ParamsWithContext creates a new GetStatCycles1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatCycles1ParamsWithContext(ctx context.Context) *GetStatCycles1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCycles1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetStatCycles1ParamsWithHTTPClient creates a new GetStatCycles1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatCycles1ParamsWithHTTPClient(client *http.Client) *GetStatCycles1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatCycles1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetStatCycles1Params contains all the parameters to send to the API endpoint
for the get stat cycles 1 operation typically these are written to a http.Request
*/
type GetStatCycles1Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithTimeout(timeout time.Duration) *GetStatCycles1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithContext(ctx context.Context) *GetStatCycles1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithHTTPClient(client *http.Client) *GetStatCycles1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetStatCycles1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithNamespace(namespace string) *GetStatCycles1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCycleType adds the cycleType to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithCycleType(cycleType *string) *GetStatCycles1Params {
	o.SetCycleType(cycleType)
	return o
}

// SetCycleType adds the cycleType to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetCycleType(cycleType *string) {
	o.CycleType = cycleType
}

// WithLimit adds the limit to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithLimit(limit *int32) *GetStatCycles1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithName adds the name to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithName(name *string) *GetStatCycles1Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithOffset(offset *int32) *GetStatCycles1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithSortBy(sortBy *string) *GetStatCycles1Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the get stat cycles 1 params
func (o *GetStatCycles1Params) WithStatus(status *string) *GetStatCycles1Params {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the get stat cycles 1 params
func (o *GetStatCycles1Params) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatCycles1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
