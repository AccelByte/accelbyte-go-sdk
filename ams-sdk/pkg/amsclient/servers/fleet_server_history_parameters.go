// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package servers

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

// NewFleetServerHistoryParams creates a new FleetServerHistoryParams object
// with the default values initialized.
func NewFleetServerHistoryParams() *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetServerHistoryParamsWithTimeout creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetServerHistoryParamsWithTimeout(timeout time.Duration) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		timeout: timeout,
	}
}

// NewFleetServerHistoryParamsWithContext creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetServerHistoryParamsWithContext(ctx context.Context) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		Context: ctx,
	}
}

// NewFleetServerHistoryParamsWithHTTPClient creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetServerHistoryParamsWithHTTPClient(client *http.Client) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{
		HTTPClient: client,
	}
}

/*FleetServerHistoryParams contains all the parameters to send to the API endpoint
for the fleet server history operation typically these are written to a http.Request
*/
type FleetServerHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FleetID
	  ID of the fleet

	*/
	FleetID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  Defines the maximum number of records returned in one page. Default is 1000 when not provided.

	*/
	Count *int64
	/*Offset
	  Specifies the start index for the records returned. Useful for implementing pagination. Default is 0 when not provided.

	*/
	Offset *int64
	/*Reason
	  Exit reason

	*/
	Reason *string
	/*Region
	  Region

	*/
	Region *string
	/*ServerID
	  Dedicated server ID

	*/
	ServerID *string
	/*SortDirection
	  The direction of the sort on the 'createdAt' column, 'asc' for ascending and 'desc' for descending. Defaults to 'asc' when not provided.

	*/
	SortDirection *string
	/*Status
	  Status of the dedicated server

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the fleet server history params
func (o *FleetServerHistoryParams) WithTimeout(timeout time.Duration) *FleetServerHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet server history params
func (o *FleetServerHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet server history params
func (o *FleetServerHistoryParams) WithContext(ctx context.Context) *FleetServerHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet server history params
func (o *FleetServerHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet server history params
func (o *FleetServerHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet server history params
func (o *FleetServerHistoryParams) WithHTTPClient(client *http.Client) *FleetServerHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet server history params
func (o *FleetServerHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet server history params
func (o *FleetServerHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetServerHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFleetID adds the fleetID to the fleet server history params
func (o *FleetServerHistoryParams) WithFleetID(fleetID string) *FleetServerHistoryParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet server history params
func (o *FleetServerHistoryParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet server history params
func (o *FleetServerHistoryParams) WithNamespace(namespace string) *FleetServerHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet server history params
func (o *FleetServerHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the fleet server history params
func (o *FleetServerHistoryParams) WithCount(count *int64) *FleetServerHistoryParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the fleet server history params
func (o *FleetServerHistoryParams) SetCount(count *int64) {
	o.Count = count
}

// WithOffset adds the offset to the fleet server history params
func (o *FleetServerHistoryParams) WithOffset(offset *int64) *FleetServerHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the fleet server history params
func (o *FleetServerHistoryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithReason adds the reason to the fleet server history params
func (o *FleetServerHistoryParams) WithReason(reason *string) *FleetServerHistoryParams {
	o.SetReason(reason)
	return o
}

// SetReason adds the reason to the fleet server history params
func (o *FleetServerHistoryParams) SetReason(reason *string) {
	o.Reason = reason
}

// WithRegion adds the region to the fleet server history params
func (o *FleetServerHistoryParams) WithRegion(region *string) *FleetServerHistoryParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the fleet server history params
func (o *FleetServerHistoryParams) SetRegion(region *string) {
	o.Region = region
}

// WithServerID adds the serverID to the fleet server history params
func (o *FleetServerHistoryParams) WithServerID(serverID *string) *FleetServerHistoryParams {
	o.SetServerID(serverID)
	return o
}

// SetServerID adds the serverId to the fleet server history params
func (o *FleetServerHistoryParams) SetServerID(serverID *string) {
	o.ServerID = serverID
}

// WithSortDirection adds the sortDirection to the fleet server history params
func (o *FleetServerHistoryParams) WithSortDirection(sortDirection *string) *FleetServerHistoryParams {
	o.SetSortDirection(sortDirection)
	return o
}

// SetSortDirection adds the sortDirection to the fleet server history params
func (o *FleetServerHistoryParams) SetSortDirection(sortDirection *string) {
	o.SortDirection = sortDirection
}

// WithStatus adds the status to the fleet server history params
func (o *FleetServerHistoryParams) WithStatus(status *string) *FleetServerHistoryParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the fleet server history params
func (o *FleetServerHistoryParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *FleetServerHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Reason != nil {

		// query param reason
		var qrReason string
		if o.Reason != nil {
			qrReason = *o.Reason
		}
		qReason := qrReason
		if qReason != "" {
			if err := r.SetQueryParam("reason", qReason); err != nil {
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
