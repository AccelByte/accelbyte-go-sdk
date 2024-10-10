// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

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

// Get the enum in FleetServersParams
const (
	FleetServersAscConstant  = "asc"
	FleetServersDescConstant = "desc"
)

// Get the enum in FleetServersParams
const (
	FleetServersClaimedConstant      = "claimed"
	FleetServersClaimingConstant     = "claiming"
	FleetServersCrashBackoffConstant = "crash backoff"
	FleetServersCreatingConstant     = "creating"
	FleetServersDrainingConstant     = "draining"
	FleetServersReadyConstant        = "ready"
	FleetServersUnresponsiveConstant = "unresponsive"
)

// NewFleetServersParams creates a new FleetServersParams object
// with the default values initialized.
func NewFleetServersParams() *FleetServersParams {
	var (
		countDefault         = int64(10000)
		offsetDefault        = int64(0)
		sortByDefault        = string("created_at")
		sortDirectionDefault = string("desc")
	)
	return &FleetServersParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetServersParamsWithTimeout creates a new FleetServersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetServersParamsWithTimeout(timeout time.Duration) *FleetServersParams {
	var (
		countDefault         = int64(10000)
		offsetDefault        = int64(0)
		sortByDefault        = string("created_at")
		sortDirectionDefault = string("desc")
	)
	return &FleetServersParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: timeout,
	}
}

// NewFleetServersParamsWithContext creates a new FleetServersParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetServersParamsWithContext(ctx context.Context) *FleetServersParams {
	var (
		countDefault         = int64(10000)
		offsetDefault        = int64(0)
		sortByDefault        = string("created_at")
		sortDirectionDefault = string("desc")
	)
	return &FleetServersParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		Context: ctx,
	}
}

// NewFleetServersParamsWithHTTPClient creates a new FleetServersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetServersParamsWithHTTPClient(client *http.Client) *FleetServersParams {
	var (
		countDefault         = int64(10000)
		offsetDefault        = int64(0)
		sortByDefault        = string("created_at")
		sortDirectionDefault = string("desc")
	)
	return &FleetServersParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,
		HTTPClient:    client,
	}
}

/*FleetServersParams contains all the parameters to send to the API endpoint
for the fleet servers operation typically these are written to a http.Request
*/
type FleetServersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FleetID
	  the id of the fleet

	*/
	FleetID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  the data limit

	*/
	Count *int64
	/*Offset
	  the data offset

	*/
	Offset *int64
	/*Region
	  the servers region

	*/
	Region *string
	/*ServerID
	  the id of the server

	*/
	ServerID *string
	/*SortBy
	  the field by which to order the data

	*/
	SortBy *string
	/*SortDirection
	  the data ordering direction

	*/
	SortDirection *string
	/*Status
	  the servers status

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the fleet servers params
func (o *FleetServersParams) WithTimeout(timeout time.Duration) *FleetServersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet servers params
func (o *FleetServersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet servers params
func (o *FleetServersParams) WithContext(ctx context.Context) *FleetServersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet servers params
func (o *FleetServersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet servers params
func (o *FleetServersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet servers params
func (o *FleetServersParams) WithHTTPClient(client *http.Client) *FleetServersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet servers params
func (o *FleetServersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet servers params
func (o *FleetServersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetServersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFleetID adds the fleetID to the fleet servers params
func (o *FleetServersParams) WithFleetID(fleetID string) *FleetServersParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet servers params
func (o *FleetServersParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet servers params
func (o *FleetServersParams) WithNamespace(namespace string) *FleetServersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet servers params
func (o *FleetServersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the fleet servers params
func (o *FleetServersParams) WithCount(count *int64) *FleetServersParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the fleet servers params
func (o *FleetServersParams) SetCount(count *int64) {
	o.Count = count
}

// WithOffset adds the offset to the fleet servers params
func (o *FleetServersParams) WithOffset(offset *int64) *FleetServersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the fleet servers params
func (o *FleetServersParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithRegion adds the region to the fleet servers params
func (o *FleetServersParams) WithRegion(region *string) *FleetServersParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the fleet servers params
func (o *FleetServersParams) SetRegion(region *string) {
	o.Region = region
}

// WithServerID adds the serverID to the fleet servers params
func (o *FleetServersParams) WithServerID(serverID *string) *FleetServersParams {
	o.SetServerID(serverID)
	return o
}

// SetServerID adds the serverId to the fleet servers params
func (o *FleetServersParams) SetServerID(serverID *string) {
	o.ServerID = serverID
}

// WithSortBy adds the sortBy to the fleet servers params
func (o *FleetServersParams) WithSortBy(sortBy *string) *FleetServersParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the fleet servers params
func (o *FleetServersParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSortDirection adds the sortDirection to the fleet servers params
func (o *FleetServersParams) WithSortDirection(sortDirection *string) *FleetServersParams {
	o.SetSortDirection(sortDirection)
	return o
}

// SetSortDirection adds the sortDirection to the fleet servers params
func (o *FleetServersParams) SetSortDirection(sortDirection *string) {
	o.SortDirection = sortDirection
}

// WithStatus adds the status to the fleet servers params
func (o *FleetServersParams) WithStatus(status *string) *FleetServersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the fleet servers params
func (o *FleetServersParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *FleetServersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param fleetID
	if err := r.SetPathParam("fleetID", o.FleetID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
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

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.ServerID != nil {

		// query param serverId
		var qrServerID string
		if o.ServerID != nil {
			qrServerID = *o.ServerID
		}
		qServerID := qrServerID
		if qServerID != "" {
			if err := r.SetQueryParam("serverId", qServerID); err != nil {
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

	if o.SortDirection != nil {

		// query param sortDirection
		var qrSortDirection string
		if o.SortDirection != nil {
			qrSortDirection = *o.SortDirection
		}
		qSortDirection := qrSortDirection
		if qSortDirection != "" {
			if err := r.SetQueryParam("sortDirection", qSortDirection); err != nil {
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
