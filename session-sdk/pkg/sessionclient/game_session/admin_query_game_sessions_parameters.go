// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// NewAdminQueryGameSessionsParams creates a new AdminQueryGameSessionsParams object
// with the default values initialized.
func NewAdminQueryGameSessionsParams() *AdminQueryGameSessionsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryGameSessionsParamsWithTimeout creates a new AdminQueryGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryGameSessionsParamsWithTimeout(timeout time.Duration) *AdminQueryGameSessionsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryGameSessionsParamsWithContext creates a new AdminQueryGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryGameSessionsParamsWithContext(ctx context.Context) *AdminQueryGameSessionsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryGameSessionsParamsWithHTTPClient creates a new AdminQueryGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryGameSessionsParamsWithHTTPClient(client *http.Client) *AdminQueryGameSessionsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryGameSessionsParams contains all the parameters to send to the API endpoint
for the admin query game sessions operation typically these are written to a http.Request
*/
type AdminQueryGameSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ConfigurationName
	  configuration template name

	*/
	ConfigurationName *string
	/*DsPodName
	  pod name of a dedicated server

	*/
	DsPodName *string
	/*FromTime
	  beginning of game session creation time range in RFC 3339 format e.g. 2022-10-21T07:20:50Z

	*/
	FromTime *string
	/*GameMode
	  game mode

	*/
	GameMode *string
	/*IsPersistent
	  game session is Persistent. supported: TRUE, FALSE

	*/
	IsPersistent *string
	/*IsSoftDeleted
	  game session is soft deleted. supported: TRUE, FALSE

	*/
	IsSoftDeleted *string
	/*Joinability
	  game session joinability to filter. joinability types: OPEN,CLOSED,INVITE_ONLY

	*/
	Joinability *string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*MatchPool
	  matchmaking pool

	*/
	MatchPool *string
	/*MemberID
	  member user ID

	*/
	MemberID *string
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
	/*SessionID
	  game session ID

	*/
	SessionID *string
	/*Status
	  game session status to filter. supported status: NEED_TO_REQUEST,REQUESTED,AVAILABLE,FAILED_TO_REQUEST,DS_ERROR,PREPARING

	*/
	Status *string
	/*StatusV2
	  game session status to filter. supported status: NEED_TO_REQUEST,REQUESTED,AVAILABLE,FAILED_TO_REQUEST,UNKNOWN,ENDED,DS_ERROR,PREPARING,DS_CANCELLED

	*/
	StatusV2 *string
	/*ToTime
	  end of game session creation time range in RFC 3339 format e.g. 2022-10-21T07:20:50Z

	*/
	ToTime *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithTimeout(timeout time.Duration) *AdminQueryGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithContext(ctx context.Context) *AdminQueryGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithHTTPClient(client *http.Client) *AdminQueryGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryGameSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithNamespace(namespace string) *AdminQueryGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithConfigurationName adds the configurationName to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithConfigurationName(configurationName *string) *AdminQueryGameSessionsParams {
	o.SetConfigurationName(configurationName)
	return o
}

// SetConfigurationName adds the configurationName to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetConfigurationName(configurationName *string) {
	o.ConfigurationName = configurationName
}

// WithDsPodName adds the dsPodName to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithDsPodName(dsPodName *string) *AdminQueryGameSessionsParams {
	o.SetDsPodName(dsPodName)
	return o
}

// SetDsPodName adds the dsPodName to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetDsPodName(dsPodName *string) {
	o.DsPodName = dsPodName
}

// WithFromTime adds the fromTime to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithFromTime(fromTime *string) *AdminQueryGameSessionsParams {
	o.SetFromTime(fromTime)
	return o
}

// SetFromTime adds the fromTime to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetFromTime(fromTime *string) {
	o.FromTime = fromTime
}

// WithGameMode adds the gameMode to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithGameMode(gameMode *string) *AdminQueryGameSessionsParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithIsPersistent adds the isPersistent to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithIsPersistent(isPersistent *string) *AdminQueryGameSessionsParams {
	o.SetIsPersistent(isPersistent)
	return o
}

// SetIsPersistent adds the isPersistent to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetIsPersistent(isPersistent *string) {
	o.IsPersistent = isPersistent
}

// WithIsSoftDeleted adds the isSoftDeleted to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithIsSoftDeleted(isSoftDeleted *string) *AdminQueryGameSessionsParams {
	o.SetIsSoftDeleted(isSoftDeleted)
	return o
}

// SetIsSoftDeleted adds the isSoftDeleted to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetIsSoftDeleted(isSoftDeleted *string) {
	o.IsSoftDeleted = isSoftDeleted
}

// WithJoinability adds the joinability to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithJoinability(joinability *string) *AdminQueryGameSessionsParams {
	o.SetJoinability(joinability)
	return o
}

// SetJoinability adds the joinability to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetJoinability(joinability *string) {
	o.Joinability = joinability
}

// WithLimit adds the limit to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithLimit(limit *int64) *AdminQueryGameSessionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchPool adds the matchPool to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithMatchPool(matchPool *string) *AdminQueryGameSessionsParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetMatchPool(matchPool *string) {
	o.MatchPool = matchPool
}

// WithMemberID adds the memberID to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithMemberID(memberID *string) *AdminQueryGameSessionsParams {
	o.SetMemberID(memberID)
	return o
}

// SetMemberID adds the memberId to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetMemberID(memberID *string) {
	o.MemberID = memberID
}

// WithOffset adds the offset to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithOffset(offset *int64) *AdminQueryGameSessionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithOrder(order *string) *AdminQueryGameSessionsParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithOrderBy(orderBy *string) *AdminQueryGameSessionsParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithSessionID adds the sessionID to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithSessionID(sessionID *string) *AdminQueryGameSessionsParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WithStatus adds the status to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithStatus(status *string) *AdminQueryGameSessionsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetStatus(status *string) {
	o.Status = status
}

// WithStatusV2 adds the statusV2 to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithStatusV2(statusV2 *string) *AdminQueryGameSessionsParams {
	o.SetStatusV2(statusV2)
	return o
}

// SetStatusV2 adds the statusV2 to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetStatusV2(statusV2 *string) {
	o.StatusV2 = statusV2
}

// WithToTime adds the toTime to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) WithToTime(toTime *string) *AdminQueryGameSessionsParams {
	o.SetToTime(toTime)
	return o
}

// SetToTime adds the toTime to the admin query game sessions params
func (o *AdminQueryGameSessionsParams) SetToTime(toTime *string) {
	o.ToTime = toTime
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ConfigurationName != nil {

		// query param configurationName
		var qrConfigurationName string
		if o.ConfigurationName != nil {
			qrConfigurationName = *o.ConfigurationName
		}
		qConfigurationName := qrConfigurationName
		if qConfigurationName != "" {
			if err := r.SetQueryParam("configurationName", qConfigurationName); err != nil {
				return err
			}
		}

	}

	if o.DsPodName != nil {

		// query param dsPodName
		var qrDsPodName string
		if o.DsPodName != nil {
			qrDsPodName = *o.DsPodName
		}
		qDsPodName := qrDsPodName
		if qDsPodName != "" {
			if err := r.SetQueryParam("dsPodName", qDsPodName); err != nil {
				return err
			}
		}

	}

	if o.FromTime != nil {

		// query param fromTime
		var qrFromTime string
		if o.FromTime != nil {
			qrFromTime = *o.FromTime
		}
		qFromTime := qrFromTime
		if qFromTime != "" {
			if err := r.SetQueryParam("fromTime", qFromTime); err != nil {
				return err
			}
		}

	}

	if o.GameMode != nil {

		// query param gameMode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("gameMode", qGameMode); err != nil {
				return err
			}
		}

	}

	if o.IsPersistent != nil {

		// query param isPersistent
		var qrIsPersistent string
		if o.IsPersistent != nil {
			qrIsPersistent = *o.IsPersistent
		}
		qIsPersistent := qrIsPersistent
		if qIsPersistent != "" {
			if err := r.SetQueryParam("isPersistent", qIsPersistent); err != nil {
				return err
			}
		}

	}

	if o.IsSoftDeleted != nil {

		// query param isSoftDeleted
		var qrIsSoftDeleted string
		if o.IsSoftDeleted != nil {
			qrIsSoftDeleted = *o.IsSoftDeleted
		}
		qIsSoftDeleted := qrIsSoftDeleted
		if qIsSoftDeleted != "" {
			if err := r.SetQueryParam("isSoftDeleted", qIsSoftDeleted); err != nil {
				return err
			}
		}

	}

	if o.Joinability != nil {

		// query param joinability
		var qrJoinability string
		if o.Joinability != nil {
			qrJoinability = *o.Joinability
		}
		qJoinability := qrJoinability
		if qJoinability != "" {
			if err := r.SetQueryParam("joinability", qJoinability); err != nil {
				return err
			}
		}

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

	if o.MatchPool != nil {

		// query param matchPool
		var qrMatchPool string
		if o.MatchPool != nil {
			qrMatchPool = *o.MatchPool
		}
		qMatchPool := qrMatchPool
		if qMatchPool != "" {
			if err := r.SetQueryParam("matchPool", qMatchPool); err != nil {
				return err
			}
		}

	}

	if o.MemberID != nil {

		// query param memberID
		var qrMemberID string
		if o.MemberID != nil {
			qrMemberID = *o.MemberID
		}
		qMemberID := qrMemberID
		if qMemberID != "" {
			if err := r.SetQueryParam("memberID", qMemberID); err != nil {
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

	if o.SessionID != nil {

		// query param sessionID
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("sessionID", qSessionID); err != nil {
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

	if o.StatusV2 != nil {

		// query param statusV2
		var qrStatusV2 string
		if o.StatusV2 != nil {
			qrStatusV2 = *o.StatusV2
		}
		qStatusV2 := qrStatusV2
		if qStatusV2 != "" {
			if err := r.SetQueryParam("statusV2", qStatusV2); err != nil {
				return err
			}
		}

	}

	if o.ToTime != nil {

		// query param toTime
		var qrToTime string
		if o.ToTime != nil {
			qrToTime = *o.ToTime
		}
		qToTime := qrToTime
		if qToTime != "" {
			if err := r.SetQueryParam("toTime", qToTime); err != nil {
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
